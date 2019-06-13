import 'package:flutterritory/models/top_stories.dart';
import 'package:test/test.dart';

void main() {
  test("parse top stories", () {
    const jsonString = """
      {
        "results": [
          {
            "section": "U.S.",
            "subsection": "Politics",
            "title": "Preliminary Nafta Deal Reached Between U.S. and Mexico",
            "abstract": "The agreement is a major step for President Trump, who has threatened to scrap the pact altogether. But Canada is still on the sidelines, and many issues are unresolved.",
            "url": "https://www.nytimes.com/2018/08/27/us/politics/us-mexico-nafta-deal.html",
            "byline": "By ANA SWANSON and KATIE ROGERS",
            "multimedia": [
              {
                "url": "https://static01.nyt.com/images/2018/08/27/us/28DC-nafta/28DC-nafta-thumbStandard.jpg",
                "format": "Standard Thumbnail"
              },
              {
                "url": "https://static01.nyt.com/images/2018/08/27/us/28DC-nafta/28DC-nafta-thumbLarge.jpg",
                "format": "thumbLarge"
              },
              {
                "url": "https://static01.nyt.com/images/2018/08/27/us/28DC-nafta/28DC-nafta-articleInline-v2.jpg",
                "format": "Normal"
              },
              {
                "url": "https://static01.nyt.com/images/2018/08/27/us/28DC-nafta/28DC-nafta-mediumThreeByTwo210-v2.jpg",
                "format": "mediumThreeByTwo210"
              },
              {
                "url": "https://static01.nyt.com/images/2018/08/27/us/28DC-nafta/28DC-nafta-superJumbo-v2.jpg",
                "format": "superJumbo"
              }
            ]
          }
        ]
      }
    """;

    var results = parseTopStories(jsonString).results;
    expect(results.length, 1);
  });
}