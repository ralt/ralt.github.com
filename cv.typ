#import "@preview/modern-cv:0.9.0": *

#show: resume.with(
  author: (
    firstname: "Florian",
    lastname: "Margaine",
    email: "florian@margaine.com",
    homepage: "https://margaine.com",
    phone: "",
    github: "ralt",
    address: "Marseille area, France",
    positions: (
      "Field CTO",
      "Engineering Leader",
    ),
    custom: (
      (
        text: "florian-margaine",
        icon: "linkedin",
        link: "https://www.linkedin.com/in/florian-margaine-43971136/",
      ),
    ),
  ),
  keywords: ("Field CTO", "cloud infrastructure", "PaaS", "container security", "distributed systems", "platform migrations", "engineering leadership"),
  description: "Hands-on engineering leader with 15+ years in software and 10+ at Platform.sh / Upsun",
  profile-picture: none,
  date: datetime.today().display(),
  language: "en",
  colored-headers: true,
  show-footer: false,
  paper-size: "a4",
)

= Summary

Hands-on engineering leader with 15+ years in software and 10+ at Platform.sh / Upsun. Bridges business strategy and deep infrastructure expertise — from container networking and storage optimization to enterprise migration planning. Open-source enthusiast with contributions to Linux kernel, PHP, and Node.js. Prolific technical writer with numerous deep-dive articles on cloud infrastructure, container security, and distributed systems.

= Experience

#resume-entry(
  title: "Platform.sh / Upsun",
  location: "Remote, France",
  date: "Jun 2015 - Present",
)

#resume-item[
  *Field CTO* #h(1fr) _Jul 2025 - Present_
  - Bridging the gap between business and technology while driving growth across all regions
  - Combining thought leadership, technical expertise, and business acumen to influence enterprise adoption of Upsun's solutions across the industry

  *SVP, Engineering & Operations* #h(1fr) _Jan 2022 - Jun 2025_
  - Lead and managed the technical development and operational performance of the organization, overseeing up to 60 engineers across software, operations, security, and observability teams
  - Collaborated with cross-functional teams to define product vision and roadmap, ensuring alignment with overall business objectives
  - Stayed ahead of industry trends, leveraging emerging technologies and best practices to drive growth and optimize efficiency
  - Fostered a culture of collaboration and excellence, mentoring team members to achieve their goals and exceed expectations
  - Oversaw strategic planning and execution of initiatives, driving continuous improvement in processes and outcomes

  *VP of Engineering* #h(1fr) _Sep 2017 - Jan 2022_
  - Directed and scaled engineering teams from 3 to 30, ensuring the successful development and delivery of high-quality software products
  - Implemented engineering best practices, leading to improved team productivity and code quality
  - Collaborated closely with product management to align engineering goals with business needs, driving successful product launches

  *Software Engineer* #h(1fr) _Jun 2015 - Sep 2017_
  - Developed and maintained software solutions, contributing to various projects with a focus on high-quality code and efficient problem-solving
  - Worked with a diverse range of technologies, continuously improving coding standards and project workflows
]

#resume-entry(
  title: "Commerce Guys",
  location: "Remote, France",
  date: "Sep 2014 - Jun 2015",
  description: "Software Development Consultant",
)

#resume-item[
  - Consulting on Drupal Commerce projects
  - R&D on Drupal Commerce modules as well as migrations to Drupal 8
  - Consulting on migrating projects from SVN to Git
  - Consulting on Drupal projects best practices
]

#resume-entry(
  title: "Smile Open Source Solutions",
  location: "Grenoble, France",
  date: "Sep 2012 - Sep 2014",
)

#resume-item[
  *Technical Project Manager* #h(1fr) _Sep 2013 - Sep 2014_
  - Technical management of projects with 2–4 developers
  - Making the best use of tools such as Redmine for efficient project management
  - In charge of technical communication with external partners

  *R&D Engineer* #h(1fr) _Sep 2012 - Sep 2013_
  - Design and development of solutions based on Drupal, Drupal Commerce, eZPublish, Magento, Symfony, and Fast
  - Setup of development/integration environments (Debian/CentOS/Red Hat, Apache/nginx, Varnish, MySQL, Solr, Redis, Memcached)
  - Documentation maintenance of the ongoing projects (wikis, technical specifications, etc)
  - Automation setup for easier deployments and productivity
]

#resume-entry(
  title: "TourMaG.com",
  location: "France",
  date: "Sep 2010 - Sep 2012",
  description: "Web Developer / Community Manager",
)

#resume-item[
  - Maintenance of dedicated servers (Debian, Apache, Varnish, MySQL)
  - Design and development of Joomla! and Drupal projects
  - Vendors management
]

#resume-entry(
  title: "IFC Avignon",
  location: "Avignon, France",
  date: "Sep 2009 - Jul 2010",
  description: "IT Technician",
)

#resume-item[
  - Management of IT infrastructure (Windows Server 2003, IPCop)
  - Training and helpdesk
  - Development of internal applications (PHP/MySQL)
]

#resume-entry(
  title: "5/7 Etiquette",
  location: "France",
  date: "Sep 2007 - Aug 2009",
  description: "Network Administrator",
)

#resume-item[
  - Management of IT infrastructure
  - Training and helpdesk
  - Excel macros development
]

= Technical Writing & Thought Leadership

#resume-entry(
  title: "Upsun DevCenter",
  location: [#link("https://devcenter.upsun.com")[devcenter.upsun.com]],
  date: "Ongoing",
  description: "Technical Author",
)

#resume-item[
  - Regular author of in-depth technical articles covering container hardening pipelines, mesh networking with GRE tunnels, storage optimization with dm-cache and Ceph snapshots, ZooKeeper coordination for Galera clusters, and enterprise migration roadmaps
  - Active on LinkedIn writing about engineering leadership, AI, and developer culture
]

= Open Source

#resume-skill-item("Upstream contributions", ("Linux kernel", "php-src", "Node.js", "npm"))
#resume-skill-item("Personal projects", ("Go", "C", "Common Lisp", "Python", [and more — #link("https://github.com/ralt")[github.com/ralt]]))
#block(below: 0.65em)

= Education

#resume-entry(
  title: "Groupe 4 / Institut 4IM",
  location: "France",
  date: "2010 - 2012",
  description: "Master, Project Management",
)

#resume-entry(
  title: "IFC Marseille",
  location: "Marseille, France",
  date: "2009 - 2010",
  description: "C.S.I.A., Project Management",
)

#resume-entry(
  title: "IFC Avignon",
  location: "Avignon, France",
  date: "2007 - 2009",
  description: "BTS, IT Management",
)
