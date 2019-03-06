# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
TalentValue.destroy_all
Talent.destroy_all
JobOffer.destroy_all
CompanyValue.destroy_all
Value.destroy_all
Company.destroy_all
Position.destroy_all

puts 'Creating companies...'

alan = Company.create!(
    name: "Alan",
    industry: "insurance",
    category: "start up",
    description: "Alan is the leading digital health insurance provider in France.
    Founded in 2016 by Jean-Charles Samuelian and Charles Gorintin,
    Alan is making health experience simple and modern.
    In 2016, Alan became the first licensed health insurance company in France since 1986.
    Alan is a primary insurer that distributes its own health plans directly to companies and individuals.",
    remote_logo_url: "https://res.cloudinary.com/romscloud/image/upload/v1551872630/HAPPY-NEW-LOGO/ALAN.png",
    latestnews: "https://www.maddyness.com/2019/02/18/alan-leve-40-millions-euros/",
    latestnews_summary: "Alan rises 40 million euros !",
    latestnews_media: "Article",
    remote_teampicture_url: "http://res.cloudinary.com/romscloud/image/upload/v1551363031/team_image_company/alan_team.jpg"
  )


openclassrooms = Company.create(
    name: "Openclassrooms",
    industry: "education",
    category: "start up",
    description: "OpenClassrooms is an online education platform for vocational training, providing courses in IT, technology, entrepreneurship, and digital skills.
    Courses are conducted fully online, through a mix of video resources, online reading, real-life projects and individual mentoring sessions.
    Founded in 2013 by Pierre Dubuc and Mathieu Nebra, OpenClassrooms now has 2.5 million Companys worldwide and offers courses in English, French and Spanish.
    The company's mission is to ‘make education accessible",
    remote_logo_url: "https://res.cloudinary.com/romscloud/image/upload/v1551872631/HAPPY-NEW-LOGO/OCR.png",
    latestnews: "https://www.linformaticien.com/actualites/id/50296/openclassrooms-l-e-learning-non-elitiste-a-la-conquete-du-monde.aspx",
    latestnews_summary: "OpenClassRooms ready to conquer the world with opensource",
    latestnews_media: "Article",
    remote_teampicture_url: "http://res.cloudinary.com/romscloud/image/upload/v1551363032/team_image_company/openclassrooms_team.jpg"
  )

good = Company.create(
    name: "Good gout",
    industry: "food",
    category: "start up",
    description: "Good gout is a brand dedicated to babyfood: natural, high-quality products that are rigorously tested and provide a full
    and well-balanced meal",
    remote_logo_url: "https://res.cloudinary.com/romscloud/image/upload/v1551872631/HAPPY-NEW-LOGO/Good_Gout.png",
    latestnews: "https://www.lsa-conso.fr/info-lsa-nutrition-infantile-good-gout-rachete-par-le-groupe-hongkongais-h-h,298411",
    latestnews_summary: "Good Gout bought by Honkongese H&H",
    latestnews_media: "Article",
    remote_teampicture_url: "http://res.cloudinary.com/romscloud/image/upload/v1551363032/team_image_company/good_gout_team.jpg"
  )

wynd = Company.create(
    name: "Wynd",
    industry: "ecommerce",
    category: "start up",
    description: "Wynd is the platform for reducing the gap between the digital world and the physical point of sale.
    Our double expertise on the logistic component (moving the stock, deploying new services and customer journeys quickly)
    and cash-in (registering and charging orders according to the different channels) allows retailers to have a coherence of tools and data between
    the digital and the physical world to increase their margins. ",
    remote_logo_url: "https://res.cloudinary.com/romscloud/image/upload/v1551872631/HAPPY-NEW-LOGO/WYND.png",
    latestnews: "https://www.rudebaguette.com/2019/01/wynd-leve-72-millions-euros/",
    latestnews_summary: "Wynd is going international",
    latestnews_media: "Article",
    remote_teampicture_url: "http://res.cloudinary.com/romscloud/image/upload/v1551363033/team_image_company/wynd_team.jpg"
  )

mangopay = Company.create(
    name: "Mangopay",
    industry: "fintech",
    category: "Plus de 50 salariés",
    description: "MANGOPAY is an end-to-end payment solution for Marketplaces, Crowdfunding and Fintech platforms.
    Unlike traditional payment solutions, MANGOPAY provides its customers with a developer-friendly API and a white-label
    solution that can be seamlessly integrated in your design. ",
    remote_logo_url: "https://res.cloudinary.com/romscloud/image/upload/v1551872848/zlccwpk2adecrlvgiuzr.png",
    latestnews: "https://www.generationxx.fr/les-invitees-du-podcast/celinelazorthes",
    latestnews_summary: "Mangopay CEO talks about woman leadership",
    latestnews_media: "Podcast",
    remote_teampicture_url: "http://res.cloudinary.com/romscloud/image/upload/v1551363032/team_image_company/team_mangopay.jpg"
  )

foxintelligence = Company.create(
    name: "Foxintelligence",
    industry: "big data",
    category: "start up",
    description: "Foxintelligence delivers the best insights on the latest European ecommerce trends, by unlocking intelligence
    from hundreds of merchants and thousands of brands e-receipts. We provide the most reliable insights available for e-commerce
    while helping consumers save both time and money.",
    remote_logo_url: "https://res.cloudinary.com/romscloud/image/upload/v1551872630/HAPPY-NEW-LOGO/Foxintelligence_logo_black_2x_1.png",
    latestnews: "https://www.frenchweb.fr/fw-radar-foxintelligence-de-la-data-pour-les-e-commercants/299728",
    latestnews_summary: "FoxIntelligence, data for online retailers",
    latestnews_media: "Interview",
    remote_teampicture_url: "http://res.cloudinary.com/romscloud/image/upload/v1551363032/team_image_company/foxintelligence_team.jpg"
  )

qonto= Company.create(
    name: "Qonto",
    industry: "fintech",
    category: "start up",
    description: "Qonto is the leading neobank for SME and freelancers.",
    remote_logo_url: "https://res.cloudinary.com/romscloud/image/upload/v1551872631/HAPPY-NEW-LOGO/Qonto-logo-1024x512.png",
    latestnews: "https://www.lepoint.fr/partenaires/alexandre-prot-pourquoi-j-ai-fonde-qonto-la-neobanque-dont-je-revais-en-tant-qu-entrepreneur-31-01-2019-2290397_3662.php",
    latestnews_summary: "Why I founded Qonto ?",
    latestnews_media: "Interview",
    remote_teampicture_url: "http://res.cloudinary.com/romscloud/image/upload/v1551363033/team_image_company/team_qonto.jpg"
  )

lime = Company.create(
    name: "Lime",
    industry: "mobility",
    category: "start up",
    description: "Lime is founded on simple idea that all communities deserve access to smart, affordable mobility.
    Through the equitable distribution of shared scooters, bikes and transit vehicles,
    we aim to reduce dependence on personal automobiles for short distance transportation and leave future generations
    with a cleaner, healthier planet.",
    remote_logo_url: "https://res.cloudinary.com/romscloud/image/upload/v1551872630/HAPPY-NEW-LOGO/LIME.png",
    latestnews: "https://www.presse-citron.net/trottinettes-lime-sont-plus-plus-mises-avant-google-maps/",
    latestnews_summary: "Google maps now shows Lime scooters",
    latestnews_media: "Article",
    remote_teampicture_url: "http://res.cloudinary.com/romscloud/image/upload/v1551363032/team_image_company/lime_team.jpg"
  )

tiller = Company.create(
    name: "Tiller system",
    industry: "tech",
    category: "start up",
    description: "Tiller Systems is a cloud-based iPad point of sale (POS) software company headquartered in Paris, France.",
    remote_logo_url: "https://res.cloudinary.com/romscloud/image/upload/v1551872631/HAPPY-NEW-LOGO/TILLER.png",
    latestnews: "https://www.snacking.fr/news-3819-FoodTech---LaFourchette-et-Tiller-partenaires-pour-la-gestion-des-reservations-en-ligne.php",
    latestnews_summary: "Tiller partners with laFourchette",
    latestnews_media: "Article",
    remote_teampicture_url: "http://res.cloudinary.com/romscloud/image/upload/v1551363032/team_image_company/tiller_team.jpg"
  )


payfit= Company.create(
    name: "Payfit",
    industry: "legaltech",
    category: "start up",
    description: "Payfit allows small and medium enterprises to easily and quickly pay their employees.",
    remote_logo_url: "https://res.cloudinary.com/romscloud/image/upload/v1551872631/HAPPY-NEW-LOGO/Payfit_logo_blue.png",
    latestnews: "https://www.frenchweb.fr/comment-payfit-veut-simplifier-la-gestion-de-la-paie-dans-les-entreprises/323424",
    latestnews_summary: "How PayFit simplifies HR life",
    latestnews_media: "Video",
    remote_teampicture_url: "http://res.cloudinary.com/romscloud/image/upload/v1551373688/team_image_company/payfit_team.jpg"
  )

puts 'Creating values...'

leadership = Value.create(
    name: "Leadership",
    remote_icone_url: "http://res.cloudinary.com/romscloud/image/upload/c_scale,co_rgb:F4E8C1,e_colorize:100,f_png,h_75,w_50/v1551201225/Happy/leadership.svg"
  )

innovation = Value.create(
    name: "Innovation",
    remote_icone_url: "http://res.cloudinary.com/romscloud/image/upload/c_scale,co_rgb:F4E8C1,e_colorize:100,f_png,h_75,w_50/v1551201225/Happy/innovation.svg"
  )

security = Value.create(
    name: "Security",
    remote_icone_url: "http://res.cloudinary.com/romscloud/image/upload/c_scale,co_rgb:F4E8C1,e_colorize:100,f_png,h_75,w_50/v1551201225/Happy/security.svg"
  )

performance = Value.create(
    name: "Performance",
    remote_icone_url: "http://res.cloudinary.com/romscloud/image/upload/c_scale,co_rgb:F4E8C1,e_colorize:100,f_png,h_75,w_50/v1551201224/Happy/Performance.svg"
  )

ecofriendly = Value.create(
    name: "Eco-friendly",
    remote_icone_url: "http://res.cloudinary.com/romscloud/image/upload/c_scale,co_rgb:F4E8C1,e_colorize:100,f_png,h_75,w_50/v1551201223/Happy/eco-friendly.svg"
  )

entrepreneurship = Value.create(
    name: "Entrepreneurship",
    remote_icone_url: "http://res.cloudinary.com/romscloud/image/upload/c_scale,co_rgb:F4E8C1,e_colorize:100,f_png,h_75,w_50/v1551201223/Happy/entrepreneurship.svg"
  )

creativity = Value.create(
    name: "Creativity",
    remote_icone_url: "http://res.cloudinary.com/romscloud/image/upload/c_scale,co_rgb:F4E8C1,e_colorize:100,f_png,h_75,w_50/v1551201223/Happy/creativity.svg"
  )

caring = Value.create(
    name: "Caring",
    remote_icone_url: "http://res.cloudinary.com/romscloud/image/upload/c_scale,co_rgb:F4E8C1,e_colorize:100,f_png,h_75,w_50/v1551201222/Happy/caring.svg"
  )


autonomy = Value.create(
    name: "Autonomy",
    remote_icone_url: "http://res.cloudinary.com/romscloud/image/upload/c_scale,co_rgb:F4E8C1,e_colorize:100,f_png,h_75,w_50/v1551201223/Happy/autonomy.svg"
  )

curious = Value.create(
    name: "Curious",
    remote_icone_url: "http://res.cloudinary.com/romscloud/image/upload/c_scale,co_rgb:F4E8C1,e_colorize:100,f_png,h_75,w_50/v1551201223/Happy/curious.svg"
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
    remote_photomanager_url: "http://res.cloudinary.com/romscloud/image/upload/v1551363163/managers_photos/Bertrand_Robert_alan.jpg",
    manager_name: "Bertrand Robert",
    manager_linkedin: "https://www.linkedin.com/in/bertrandrobert/?originalSubdomain=fr",
    position: corporate_sales,
    company: alan
    )

full_stack= JobOffer.create(
    name: "Full-stack developer",
    description: "You have 1+ year of experience in web development.
    You have a solid Foundation of front-end development fundamentals (HTML5/CSS3/JavaScript)
    You’re proficient in responsive design and smooth web animations
    You have experience with Git
    You understand industry best practices (SEO, performance, maintainability…)
    You are a curious, well organized and open minded developer
    You are pragmatic and solution-oriented
    You want to build and work on a website visited by hundred of thousands users and improve it every day
    Basic knowledge in backend frameworks such as Symfony, Django or Rails and MVC architecture are highly recommended.",
    remote_photomanager_url: "http://res.cloudinary.com/romscloud/image/upload/v1551363164/managers_photos/Alex_pro_qonto.jpg",
    manager_name: "Alexandre Prot",
    manager_linkedin: "https://www.linkedin.com/in/aprot/?originalSubdomain=fr",
    position: developer,
    company: qonto
    )

project_manager= JobOffer.create(
    name: "Project Manager",
    description: "Outstanding communication and interpersonal skills: you are a team player",
    remote_photomanager_url: "http://res.cloudinary.com/romscloud/image/upload/v1551374559/managers_photos/germain_tonning_qonto.jpg",
    manager_name: "Germain Michou-Tonning",
    manager_linkedin: "https://www.linkedin.com/in/germain-michou-tonning/",
    position: project_manager,
    company: qonto
    )

full_stack= JobOffer.create(
    name: "Full-stack developer",
    description: "We are looking for a hands-on Engineer with a successful experience.",
    remote_photomanager_url: "http://res.cloudinary.com/romscloud/image/upload/v1551363164/managers_photos/Alex_pro_qonto.jpg",
    manager_name: "Ghislain de Fontenay",
    manager_linkedin: "https://www.linkedin.com/in/ghislain-de-fontenay-458297b8/?originalSubdomain=fr",
    position: developer,
    company: payfit
    )


product_owner= JobOffer.create(
    name: "Product owner",
    description: "Ability to synthesize complex information",
    remote_photomanager_url: "http://res.cloudinary.com/romscloud/image/upload/v1551363164/managers_photos/Alex_pro_qonto.jpg",
    manager_name: "Josef Bovet",
    manager_linkedin: "https://www.linkedin.com/in/josef-bovet-b6370751/",
    position: product_owner,
    company: tiller
    )

legal_advisor= JobOffer.create(
    name: "Legal advisor",
    description: "You are a problem solver and rigorous",
    remote_photomanager_url: "http://res.cloudinary.com/romscloud/image/upload/v1551363164/managers_photos/Alex_pro_qonto.jpg",
    manager_name: "Florian Fournier",
    manager_linkedin: "https://www.linkedin.com/in/florian-fournier-b093a2aa/?originalSubdomain=fr",
    position: legal_advisor,
    company: payfit
    )

country_manager= JobOffer.create(
    name: "Country manager Italy",
    description: "Want to be part of an amazing fast-growing and intense adventure?",
    remote_photomanager_url: "http://res.cloudinary.com/romscloud/image/upload/v1551363164/managers_photos/Alex_pro_qonto.jpg",
    manager_name: "Florian Fournier",
    manager_linkedin: "https://www.linkedin.com/in/florian-fournier-b093a2aa/?originalSubdomain=fr",
    position: country_manager,
    company: payfit
    )

talent_recruiter= JobOffer.create(
    name: "VP Employer Success",
    description: "Here the opportunity to improve,
    expand, and innovate",
    remote_photomanager_url: "http://res.cloudinary.com/romscloud/image/upload/v1551363164/managers_photos/Alex_pro_qonto.jpg",
    manager_name: "Xavier Molinie",
    manager_linkedin: "https://www.linkedin.com/in/xavier-molinie-3b9844/?originalSubdomain=fr",
    position: talent_recruiter,
    company: openclassrooms
    )

business_developper= JobOffer.create(
    name: "Business Developer",
    description: "Build, lead, and scale a world-class customer success team",
    remote_photomanager_url: "http://res.cloudinary.com/romscloud/image/upload/v1551363164/managers_photos/Alex_pro_qonto.jpg",
    manager_name: "Mathieu Bernard",
    manager_linkedin: "https://www.linkedin.com/in/mathieu-bernard-62a33546/?originalSubdomain=fr",
    position: business_developper,
    company: payfit
    )

puts 'Creating company_values'

alan_valeur_1 = CompanyValue.create(company_id: alan.id, value_id: curious.id)
alan_valeur_2 = CompanyValue.create(company_id: alan.id, value_id: autonomy.id)
alan_valeur_3 = CompanyValue.create(company_id: alan.id, value_id: performance.id)

qonto_valeur_1 = CompanyValue.create(company_id: qonto.id, value_id: performance.id)
qonto_valeur_2 = CompanyValue.create(company_id: qonto.id, value_id: leadership.id)
qonto_valeur_3 = CompanyValue.create(company_id: qonto.id, value_id: security.id)

good_valeur_1 = CompanyValue.create(company_id: good.id, value_id: creativity.id)
good_valeur_2 = CompanyValue.create(company_id: good.id, value_id: caring.id)
good_valeur_3 = CompanyValue.create(company_id: good.id, value_id: ecofriendly.id)

openclassrooms_valeur_1 = CompanyValue.create(company_id: openclassrooms.id, value_id: creativity.id)
openclassrooms_valeur_2 = CompanyValue.create(company_id: openclassrooms.id, value_id: curious.id)
openclassrooms_valeur_3 = CompanyValue.create(company_id: openclassrooms.id, value_id: entrepreneurship.id)

lime_valeur_1 = CompanyValue.create(company_id: payfit.id, value_id: caring.id)
lime_valeur_2 = CompanyValue.create(company_id: payfit.id, value_id: performance.id)
lime_valeur_3 = CompanyValue.create(company_id: payfit.id, value_id: leadership.id)

wynd_valeur_1 = CompanyValue.create(company_id: payfit.id, value_id: curious.id)
wynd_valeur_2 = CompanyValue.create(company_id: payfit.id, value_id: caring.id)
wynd_valeur_3 = CompanyValue.create(company_id: payfit.id, value_id: creativity.id)

mangopay_valeur_1 = CompanyValue.create(company_id: payfit.id, value_id: curious.id)
mangopay_valeur_2 = CompanyValue.create(company_id: payfit.id, value_id: caring.id)
mangopay_valeur_3 = CompanyValue.create(company_id: payfit.id, value_id: ecofriendly.id)

foxintelligence_valeur_1 = CompanyValue.create(company_id: payfit.id, value_id: entrepreneurship.id)
foxintelligence_valeur_2 = CompanyValue.create(company_id: payfit.id, value_id: caring.id)
foxintelligence_valeur_3 = CompanyValue.create(company_id: payfit.id, value_id: ecofriendly.id)

puts 'Finished !'





