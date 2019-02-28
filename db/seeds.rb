# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts 'Cleaning database...'
Company.destroy_all
JobOffer.destroy_all
Position.destroy_all

puts 'Creating companies...'
alan = Company.create(
    name: "Alan",
    industry: "insurance",
    category: "start up",
    logo: "",
    description: "Alan is the leading digital health insurance provider in France.
    Founded in 2016 by Jean-Charles Samuelian and Charles Gorintin,
    Alan is making health experience simple and modern.
    In 2016, Alan became the first licensed health insurance company in France since 1986.
    Alan is a primary insurer that distributes its own health plans directly to companies and individuals."
  )

openclassrooms = Company.create(
    name: "Openclassrooms",
    industry: "education",
    category: "start up",
    logo: "",
    description: "OpenClassrooms is an online education platform for vocational training, providing courses in IT, technology, entrepreneurship, and digital skills.
    Courses are conducted fully online, through a mix of video resources, online reading, real-life projects and individual mentoring sessions.
    Founded in 2013 by Pierre Dubuc and Mathieu Nebra, OpenClassrooms now has 2.5 million Companys worldwide and offers courses in English, French and Spanish.
    The company's mission is to ‘make education accessible"
  )

good = Company.create(
    name: "Good gout",
    industry: "food",
    category: "start up",
    logo: "",
    description: "Good gout is a brand dedicated to babyfood: natural, high-quality products that are rigorously tested and provide a full
    and well-balanced meal"
  )

wynd = Company.create(
    name: "Wynd",
    industry: "ecommerce",
    category: "start up",
    logo: "",
    description: "Wynd is the platform for reducing the gap between the digital world and the physical point of sale.
    Our double expertise on the logistic component (moving the stock, deploying new services and customer journeys quickly)
    and cash-in (registering and charging orders according to the different channels) allows retailers to have a coherence of tools and data between
    the digital and the physical world to increase their margins. "
  )

mangopay = Company.create(
    name: "Mangopay",
    industry: "fintech",
    category: "Plus de 50 salariés",
    logo: "",
    description: "MANGOPAY is an end-to-end payment solution for Marketplaces, Crowdfunding and Fintech platforms.
    Unlike traditional payment solutions, MANGOPAY provides its customers with a developer-friendly API and a white-label
    solution that can be seamlessly integrated in your design. "
  )

foxintelligence= Company.create(
    name: "Foxintelligence",
    industry: "big data",
    category: "start up",
    logo: "",
    description: "Foxintelligence delivers the best insights on the latest European ecommerce trends, by unlocking intelligence
    from hundreds of merchants and thousands of brands e-receipts. We provide the most reliable insights available for e-commerce
    while helping consumers save both time and money."
  )

qonto= Company.create(
    name: "Qonto",
    industry: "fintech",
    category: "start up",
    logo: "",
    description: "Qonto is the leading neobank for SME and freelancers."
  )

lime= Company.create(
    name: "Lime",
    industry: "mobility",
    category: "start up",
    logo: "",
    description: "Lime is founded on simple idea that all communities deserve access to smart, affordable mobility.
    Through the equitable distribution of shared scooters, bikes and transit vehicles,
    we aim to reduce dependence on personal automobiles for short distance transportation and leave future generations
    with a cleaner, healthier planet."
  )

tiller= Company.create(
    name: "Tiller system",
    industry: "tech",
    category: "start up",
    logo: "",
    description: "Tiller Systems is a cloud-based iPad point of sale (POS) software company headquartered in Paris, France."
  )

payfit= Company.create(
    name: "Payfit",
    industry: "legaltech",
    category: "start up",
    logo: "",
    description: "Payfit allows small and medium enterprises to easily and quickly pay their employees."
  )

puts 'Creating positions...'

  corporate_sales= Position.create!(
    name: "Corporate sales"
    )

  developer= Position.create(
    name: "developer"
    )

  project_manager= Position.create(
    name: "Project manager"
    )

  product_owner= Position.create(
    name: "Product owner"
    )

  business_developper= Position.create(
    name: "Business developper"
    )

  talent_recruiter= Position.create(
    name: "Talent recruiter"
    )

  country_manager= Position.create(
    name: "Country manager"
    )

  legal_advisor= Position.create(
    name: "Legal advisor"
    )

  datascientist= Position.create(
    name: "Datascientist"
    )

  customer_success= Position.create(
    name: "Customer success"
    )

  partnership= Position.create(
    name: "partnership"
    )

puts 'Creating job offers...'

corporate_sales= JobOffer.create(
    name: "Corporate sales",
    description: "You will be a good fit to join the Sales team at Alan if you:
    - Have significant previous experience in a Sales role
    - Have strong written & verbal communication skills (English & French)
    - Are highly organized with exceptional follow-up skills
    - Have empathy and are passionate about understanding and solving prospects' problems
    - Have the ability to collaborate in a fast-paced team
    - Have a desire to learn fast and make an impact from day 1

    Everything else is a plus. We care about having a diversity of experiences and backgrounds in our team.",
    manager_photo: "",
    manager_name: "Bertrand Robert",
    manager_linkedin: "https://www.linkedin.com/in/bertrandrobert/?originalSubdomain=fr",
    position: corporate_sales,
    company: alan
    )

full_stack= JobOffer.create(
    name: "Full-stack developer Growth",
    description: "You have 1+ year of experience in web development.
    You have a solid Foundation of front-end development fundamentals (HTML5/CSS3/JavaScript)
    You’re proficient in responsive design and smooth web animations
    You have experience with Git
    You understand industry best practices (SEO, performance, maintainability…)
    You are a curious, well organized and open minded developer
    You are pragmatic and solution-oriented
    You want to build and work on a website visited by hundred of thousands users and improve it every day
    Basic knowledge in backend frameworks such as Symfony, Django or Rails and MVC architecture are highly recommended.",
    manager_photo: "",
    manager_name: "Alexandre Prot",
    manager_linkedin: "https://www.linkedin.com/in/aprot/?originalSubdomain=fr",
    position: developer,
    company: qonto
    )

project_manager= JobOffer.create(
    name: "Project Manager",
    description: "what we need:
    Master’s degree or equivalent
    3+ years of experience in a consulting firm or as a project manager in a startup
    Proactive problem solver: you are not afraid to find solutions for every problem
    Ability to synthesize complex information
    Great rigor in the execution and the follow up of missions
    Outstanding communication and interpersonal skills: you are a team player
    You speak both French and English",
    manager_photo: "",
    manager_name: "Germain Michou-Tonning",
    manager_linkedin: "https://www.linkedin.com/in/germain-michou-tonning/",
    position: project_manager,
    company: qonto
    )





