# Specialising Parsers for Queries

Suppose you want to analyse tweets based on text content, retweet count,
language and username, from the [firehose][link-firehose]. You'd first need to
preprocess it all to keep only what you need. Traditionally that would be a two-
step approach:

  1. Parse all tweets from the firehose:

    ```scala
    case class Tweet(content: String, ..., rtCount: Int, ..., lang: String, user: User, ...)
    def tweetParser: Parser[List[Tweet]] = // use favorite parser combinator library
    ```

  2. Write a filtering query from the parsed collection

    ```scala
    def relevantInfo = tweetParser map { case tweets =>
      for (t <- tweets if t.rtCount >= 100)
      yield (t.content, t.rtCount, t.lang, t.user.name)
    }
    ```

This is good, because each component is separate, modular and easily changeable.
But it is also very bad for performance: we store a lot of ultimately
irrelevant information. For performance, we'd instead write a hand-crafted,
interleaved `relevantInfoParser`.

In this talk, I will present a technique to go from the nice modular way of
writing these programs to the specialised, interleaved, fast versions,
*automatically*. First the general idea (can be applied to _other_ data formats
and queries), so you can port it to your own parser combinator library. Then
some techniques to make your parser combinator library fast(er). And hopefully
even a prototype implementation.

[link-firehose]: https://dev.twitter.com/streaming/reference/get/statuses/firehose
