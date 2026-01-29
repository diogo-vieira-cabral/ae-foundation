
-- GOAL Delete duplicate email entries. Preserve only the record with the minimum `id`. Output a clean, unique-per-email table.

-- BUSINESS CONTEXT: Duplicate records are "Data Debt." They cause double-billing in marketing tools and skew customer lifetime value (LTV) metrics. The pain is **Operational Inefficiency** - sending redundant comms damages brand authority and inflates CAC.

-- TECHNICAL NOTE: Self-Join Predicate: Joining `Person` to itself on the email column creates a comparison matrix. This allows us to evaluate row properties (like `id`) against their duplicates in a single pass. **Destructive Targeting:** By filtering `p1.id > p2.id`, we isolate every record that isnt the the original/lowest ID for removal.

DELETE 
    p1
FROM 
    Person AS p1
JOIN 
    Person AS p2 ON p1.email = p2.email
WHERE 
    p1.id > p2.id;


/* BUSINESS RECOMMENDATION: 
Implement a UNIQUE constraint on the email column at the schema level. 
Manual deduplication is a reactive expense; schema-level enforcement 
is a proactive 'Hardware Hygiene' standard.
*/