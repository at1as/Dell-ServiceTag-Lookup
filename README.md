# Dell Service Tag Finder

A quicker utility for batch searching for Dell Service Tag information without having to use Dell's awful web portal.

### Usage

####Dell's implementation:


- Enter single product tag at a time
- Navigate view to System Configuration Tab
- Expand Hidden Components Subsection
- Repeat for each system

Enough.

####This Implementation:

```bash
$ ruby find.rb <service_tag1> <servicetag2> <servicetag3> ...""
$ ruby find.rb 8WL1JX1 4SQ4C42 6BTJDX1
```

Example Output:

```bash

Service Tag : 6BTJDX1
Searching... http://www.dell.com/support/home/ca/en/cabsdt1/product-support/servicetag/6BTJDX1/configuration

  - OEM PowerEdge R420,TPM
  - PCIE Riser for Chassis with 2 Proc
  - OEM PowerEdge R420 Shipping
  - 600GB 15K RPM SAS 6Gbps 3.5in Hot-plug Hard Drive
...

Service Tag : 4SQ4C42
Searching... http://www.dell.com/support/home/ca/en/cabsdt1/product-support/servicetag/4SQ4C42/configuration

  - OEM PowerEdge R720xd, Intel Xeon E-26XX v2 Processors
  - Intel Xeon E5-2620v2 2.1GHz, 1 5M Cache, 7.2GT/s QPI, Turbo, HT, 6C, 80W, Max Mem 1600MHz
  - DIMM Blanks for Systems with 2  Processors
  - Intel Xeon E5-2620v2 2.1GHz, 1 5M Cache, 7.2GT/s QPI, Turbo, HT, 6C, 80W, Max Mem 1600MHz,2nd Proc
...

```

### Dependencies:

- ruby (Developed/Tested with 2.2.0 on OS X 11)
- nokogiri (for parsing HTML)
- open-uri (for HTTP connection to site)
