class Data {
  static String name = 'WHITMAN LUI (呂鼎廉)';
  static String email = 'luiwhitman@gmail.com';
  static String phoneNo = '+852 9833 4079';
  static String whatsapp = '9833 4079';
  static String telegram = '@loadingLW';
  static String github = 'whitmanlui';
  static List<WorkExperience> workExperiences = [
    WorkExperience(
      title: 'Senior Analyst Programmer',
      companyName: 'Megahub Ltd.',
      timePeriod: '2020/08 - Present',
      achievements:
          'As a head of Flutter team, besides coding, I have to do code review to ensure that the coding styles of the teams are similar, reduce redundant work and write reusable code. Also, I will provide technical/code advice to colleagues. As the team expands, I have to hire someone for the team, and I think attitude is the most important condition for me to hire someone.',
      jobDuties: [
        'Flutter for app development',
        'Code review',
        'Interview',
        'Technical advice'
      ],
      technologiesUsed: [
        'Flutter',
        'Fastlane',
      ],
    ),
    WorkExperience(
      title: 'Technical Lead',
      companyName: 'Breakup Tours Ltd.',
      timePeriod: '2019/05 - 2020/08',
      achievements:
          'Provide full-stack development of mobile app including front-end and back-end, server settings and maintenance. As a technical lead, I also provide technical advice, data analysis, estimate development time, as well as assign task to teammate(scrum)',
      jobDuties: [
        'Flutter for app development (Breakup Tours)',
        'NodeJS with MySQL for backend services',
        'Firebase as OAuth',
        'AWS EC2 as API services, 53 as domain parking, S3 as storage',
        'Google Analytics and Flurry for data analysis'
      ],
      technologiesUsed: [
        'Flutter',
        'NodeJs',
        'MySQL',
        'Firebase',
        'AWS',
      ],
    ),
    WorkExperience(
      title: 'Full Stack Developer',
      companyName: 'CASH Financial Services Group Ltd.',
      timePeriod: '2018/04 – 2019/05',
      achievements:
          'As a full-stack developer, follow the tasks assigned by superiors, think and write clear and reusable code',
      jobDuties: [
        'React-Native for app development (Alpha-i)',
        'NodeJS with MongoDB and for backend services',
        'C# with MSSQL for backend services',
      ],
      technologiesUsed: [
        'React-Native',
        'ReactJs',
        'NodeJs',
        'MongoDB',
        'C#',
        'MSSQL',
      ],
    ),
    WorkExperience(
      title: 'Web Developer',
      companyName: 'Cheil PengTai Co., Ltd.',
      timePeriod: '2017/03 – 2018/03',
      jobDuties: [
        'Frontend development (jQuery)',
        'Backend development (C#, PHP)',
      ],
      technologiesUsed: ['jQuery', 'C#', 'MVC5', 'MSSQL', 'MySQL'],
    ),
    WorkExperience(
      title: 'Programmer',
      companyName: 'BEX Solutions Ltd.',
      timePeriod: '2016/10 – 2017/03',
      jobDuties: [
        'Frontend development (AngularJS)',
        'Backend development (C# MVC API)',
      ],
      technologiesUsed: ['AngularJs', 'C#', 'MVC5', 'MSSQL'],
    ),
    WorkExperience(
      title: 'Temporary Programmer',
      companyName: 'Achiever Company',
      timePeriod: '2016/07 – 2016/10',
      jobDuties: [
        'Frontend development (AngularJS)',
        'Backend development (J2EE API)',
        'Backend application (Java)',
      ],
      technologiesUsed: ['AngularJs', 'JAVA', 'Oracle'],
    ),
  ];
  static List<Education> education = [
    Education(
      title: 'BSc (Hons) Computing',
      schoolName: 'Coventry University, UK',
      timePeriod: '2015 - 2016',
    ),
    Education(
      title: 'HD in Information and Network Security',
      schoolName: 'Hong Kong Institute of Vocational Education (Chai Wan)',
      timePeriod: '2012 - 2015',
    ),
    Education(
      title: 'FD(Level 3) – Engineering',
      schoolName: 'Hong Kong Institute of Vocational Education (Chai Wan)',
      timePeriod: '2011 - 2012',
    ),
    Education(
      title: 'F.6 Graduated',
      schoolName: 'St. Stephen’s Church College',
      timePeriod: '2006 - 2011',
    ),
  ];
  static List<SkillsAndTools> skillsAndTools = [
    SkillsAndTools(
      title: 'APP',
      skillsAndToolsItems: [
        SkillsAndToolsItem(
          name: 'Flutter/Dart',
          value: 100,
        ),
        SkillsAndToolsItem(
          name: 'ReactJs/React-Native/Redux',
          value: 90,
        ),
        SkillsAndToolsItem(
          name: 'Ionic/Angular',
          value: 60,
        ),
      ],
    ),
    SkillsAndTools(
      title: 'Web',
      skillsAndToolsItems: [
        SkillsAndToolsItem(
          name: 'HTML, CSS, JavaScript',
          value: 90,
        ),
        SkillsAndToolsItem(
          name: 'ReactJs/NextJs',
          value: 100,
        ),
        SkillsAndToolsItem(
          name: 'AngularJs',
          value: 80,
        ),
      ],
    ),
    SkillsAndTools(
      title: 'Backend',
      skillsAndToolsItems: [
        SkillsAndToolsItem(
          name: 'NodeJs(Express)',
          value: 100,
        ),
        SkillsAndToolsItem(
          name: 'C#',
          value: 70,
        ),
      ],
    ),
    SkillsAndTools(
      title: 'Database',
      skillsAndToolsItems: [
        SkillsAndToolsItem(
          name: 'MySQL',
          value: 90,
        ),
        SkillsAndToolsItem(
          name: 'MSSQL',
          value: 90,
        ),
        SkillsAndToolsItem(
          name: 'MongoDB',
          value: 100,
        ),
        SkillsAndToolsItem(
          name: 'Firebase',
          value: 100,
        ),
      ],
    ),
    SkillsAndTools(
      title: 'Soucre Code Control',
      skillsAndToolsItems: [
        SkillsAndToolsItem(
          name: 'GIT',
          value: 100,
        ),
      ],
    ),
  ];
  static List<Language> languages = [
    Language(
      name: 'Cantonese',
      familiarity: 'Native',
    ),
    Language(
      name: 'English',
      familiarity: 'Conversational',
    ),
    Language(
      name: 'Mandarin',
      familiarity: 'Conversational',
    ),
  ];
  static List<String> interests = [
    'Basketball',
    'New Technologies',
  ];
}

class WorkExperience {
  final String title;
  final String companyName;
  final String? timePeriod;
  final String? achievements;
  final List<String>? jobDuties;
  final List<String>? technologiesUsed;

  WorkExperience({
    required this.title,
    required this.companyName,
    this.timePeriod,
    this.achievements,
    this.jobDuties,
    this.technologiesUsed,
  });
}

class Education {
  final String title;
  final String schoolName;
  final String timePeriod;

  Education({
    required this.title,
    required this.schoolName,
    required this.timePeriod,
  });
}

class SkillsAndTools {
  final String title;
  final List<SkillsAndToolsItem> skillsAndToolsItems;

  SkillsAndTools({
    required this.title,
    required this.skillsAndToolsItems,
  });
}

class SkillsAndToolsItem {
  final String name;
  final int value;

  SkillsAndToolsItem({
    required this.name,
    required this.value,
  });
}

class Language {
  final String name;
  final String familiarity;

  Language({
    required this.name,
    required this.familiarity,
  });
}
