# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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
    name: "mangopay",
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
    name: "Qont",
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
    name: "payfit",
    industry: "legaltech",
    category: "start up",
    logo: "",
    description: "Payfit allows small and medium enterprises to easily and quickly pay their employees."
  )
