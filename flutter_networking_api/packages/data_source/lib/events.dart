import 'package:data_source/models/event.dart';
import 'package:data_source/models/event_details.dart';
import 'package:data_source/models/event_location.dart';
import 'package:data_source/models/event_type.dart';

List<Event> get events => [
      Event(
        id: '1',
        name: 'Flutter & Friends',
        imageUrl: '/images/flutter_friends.png',
        website: 'https://www.flutterfriends.dev/',
        type: EventType.conference,
        announced: true,
        details: AnnouncedEventDetails(
          description:
              '''Flutter & Friends is a dual track conference for the community by the community, taking place in Stockholm, Sweden on September 3-5th 2023.
Besides learning from passionate and inspiring speakers you will be enjoying a pre-conference social day getting to know new friends as well as participate in hands-on workshops led by some of the community's top educators with a big prize hackathon at the end!
Whether you're a first-time visitor to Stockholm or a seasoned local, you'll have a blast exploring the city with new acquaintances through a carefully curated selection of social activities. From scenic bike tours and thrilling theme parks, to enlightening museum visits, there's something for everyone to enjoy.''',
          startDate: DateTime.utc(2023, 9, 3),
          endDate: DateTime.utc(2023, 9, 5),
          location: const InPersonEventLocation(
            address: 'Kulturhuset Stadsteatern, Stockholm, Sweden',
          ),
        ),
      ),
      Event(
        id: '2',
        name: 'Flutter Meetup: September Gathering @ Google Munich',
        imageUrl: '/images/flutter_munich.png',
        website: 'https://www.meetup.com/flutter-munich/events/295222238/',
        type: EventType.meetup,
        announced: true,
        details: AnnouncedEventDetails(
          description:
              '''Welcome to our next Flutter event! We're back at the Google office and looking forward to seeing all the Flutter fans, familiar and new.''',
          startDate: DateTime.utc(2023, 9, 6),
          endDate: DateTime.utc(2023, 9, 6),
          location: const InPersonEventLocation(
            address: 'Google office, Munich, Germany',
          ),
        ),
      ),
      Event(
        id: '3',
        name: 'Flutter Firebase Festival',
        imageUrl: '/images/flutter_firebase.png',
        website: 'https://f3.events/',
        type: EventType.conference,
        announced: true,
        details: AnnouncedEventDetails(
          description:
              'Join us in unifying the Flutter & Firebase communities in the heart of Europe. F3 is a two-day event with talks, workshops, and codelabs from the leading experts in the industry.',
          startDate: DateTime.utc(2023, 9, 26),
          endDate: DateTime.utc(2023, 9, 27),
          location: const InPersonEventLocation(
            address: 'Prague Congress Centre, Prague, Czechia',
          ),
        ),
      ),
      Event(
        id: '4',
        name: 'droidcon Italy',
        imageUrl: '/images/droidcon_italy.png',
        website: 'https://it.droidcon.com/2023/',
        type: EventType.conference,
        announced: true,
        details: AnnouncedEventDetails(
          description:
              '''droidcon Italy is the annual Android dev conference in person in Turin, Italy, and broadcast live. The Italian edition features international speakers and sponsors, and welcomes participants from all over Europe, and connected online from all over the globe.
This year’s event will feature two tracks of the best Android content, a huge exhibition area with lots of networking space, physical and online job boards, the aperitivo and plenty of chances to upskill in Android with like minded devs.''',
          startDate: DateTime.utc(2023, 10, 12),
          endDate: DateTime.utc(2023, 10, 13),
          location: const InPersonEventLocation(
            address: 'Museo dell’Automobile, Turin, Italy',
          ),
        ),
      ),
      Event(
        id: '5',
        name: 'Flutter Conf Latam',
        imageUrl: '/images/flutter_latam.png',
        website: 'https://flutterconflatam.dev/',
        type: EventType.conference,
        announced: true,
        details: AnnouncedEventDetails(
          description:
              '''Largest and most anticipated Flutter conference in Latin America''',
          startDate: DateTime.utc(2023, 10, 25),
          endDate: DateTime.utc(2023, 10, 26),
          location: const InPersonEventLocation(
            address: 'Medellin, Columbia',
          ),
        ),
      ),
      Event(
        id: '6',
        name: 'DroidCon London',
        imageUrl: '/images/droidcon_london.png',
        website: 'https://london.droidcon.com/',
        type: EventType.conference,
        announced: true,
        details: AnnouncedEventDetails(
          description:
              '''Learn from the experts. Be inspired. Develop connections. Explore London.''',
          startDate: DateTime.utc(2023, 10, 26),
          endDate: DateTime.utc(2023, 10, 27),
          location: const InPersonEventLocation(
            address: 'London, UK',
          ),
        ),
      ),
      Event(
        id: '7',
        name: 'Flutter Kaigi',
        imageUrl: '/images/flutter_kaigi.png',
        website: 'https://flutterkaigi.jp/2023/',
        type: EventType.conference,
        announced: true,
        details: AnnouncedEventDetails(
          description:
              '''In 2023, a technical conference mainly dealing with Flutter in Japan.
We plan many sessions by developers with deep knowledge of Flutter and Dart.''',
          startDate: DateTime.utc(2023, 11, 10),
          endDate: DateTime.utc(2023, 11, 10),
          location: const InPersonEventLocation(
            address: 'Kaigi, Japan',
          ),
        ),
      ),
      Event(
        id: '8',
        name: 'Flutteristas conference',
        imageUrl: '/images/flutteristas.png',
        website: 'https://flutteristas.org/',
        type: EventType.conference,
        announced: true,
        details: AnnouncedEventDetails(
          description:
              '''The Flutteristas is a world-wide community of people whose gender identity is either female or non-binary and have an interest in the Flutter SDK.''',
          startDate: DateTime.utc(2023, 11, 11),
          endDate: DateTime.utc(2023, 11, 11),
          location: const OnlineEventLocation(
            streamUrl: 'https://www.youtube.com/@FlutterCommunity',
          ),
        ),
      ),
      Event(
        id: '9',
        name: 'Flutter Conf India',
        imageUrl: '/images/flutter_india.png',
        website: 'https://flutterconf.in/',
        type: EventType.conference,
        announced: true,
        details: AnnouncedEventDetails(
          description:
              '''Flutter Conf India is India's largest content-centric conference. As the name suggests, it mainly focuses on quality content for Dart and Flutter delivered by some well-known and top-notch speakers from big tech companies and communities around the world.''',
          startDate: DateTime.utc(2023, 11, 25),
          endDate: DateTime.utc(2023, 11, 25),
          location: const InPersonEventLocation(
            address: 'Mumbai, India',
          ),
        ),
      ),
      Event(
        id: '10',
        name: 'Devfest Alps 2023',
        imageUrl: '/images/devfest_alps.png',
        website:
            'https://gdg.community.dev/events/details/google-gdg-torino-presents-devfest-alps-2023',
        type: EventType.devfest,
        announced: true,
        details: AnnouncedEventDetails(
          description:
              '''GDG Turin, GDG Valle D'Aosta and GDG Cuneo once again bring Devfest to the foot of the Alps!
Devfest Alps 2023 is the event for developers, designers and tech enthusiasts!
A whole day dedicated to talks and workshops, improve your skills and meet new people
And this year also a dj-set on Friday evening!''',
          startDate: DateTime.utc(2023, 12, 1),
          endDate: DateTime.utc(2023, 12, 2),
          location: const HybridEventLocation(
            address: 'Toolbox Coworking, Turin, Italy',
            streamUrl:
                'https://gdg.community.dev/events/details/google-gdg-torino-presents-devfest-alps-2023/',
          ),
        ),
      ),
      Event(
        id: '11',
        name: 'Flutter Global Summit',
        imageUrl: '/images/flutter_summit.png',
        website: 'https://geekle.us/flutter',
        type: EventType.conference,
        announced: false,
        details: NotAnnouncedEventDetails(
          description: 'Online Summit for Flutter Developers',
        ),
      ),
    ];
