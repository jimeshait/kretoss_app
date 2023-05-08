// ignore_for_file: camel_case_types

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kretoss_webapp/models/port_model.dart';
import 'package:loadmore/loadmore.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;

import '../models/blog_image_model.dart';

class Project_List extends StatefulWidget {
  const Project_List({super.key});

  @override
  State<Project_List> createState() => _Project_ListState();
}

class _Project_ListState extends State<Project_List> {
  // List products = [
  //   {
  //     'title': 'Custom',
  //     'data': [
  //       {
  //         'name': 'Gujarat Tiles Info',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/gti.png',
  //         'desc': 'Angular & Laravel',
  //         'url': 'https://gujarattilesinfo.com/',
  //         'img': '',
  //         'img1': ''
  //       },
  //       {
  //         'name': 'Implantstock',
  //         'image':
  //             'https://kretoss.com/wp-content/uploads/2022/07/implant-stock.png',
  //         'desc': 'Laravel & React',
  //         'url': 'https://implantstock.com/',
  //         'img': '',
  //         'img1': ''
  //       },
  //       {
  //         'name': 'Pinspy',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/05/Pinspy.png',
  //         'desc': 'Laravel, Vue.js',
  //         'url': 'https://pinspyfronttst.crebos.online/',
  //         'img': '',
  //         'img1': ''
  //       },
  //       {
  //         'name': 'Corona Teststraat Nissewaard',
  //         'image':
  //             'https://kretoss.com/wp-content/uploads/2022/05/coronanissewaard-crebos-online.png',
  //         'desc': 'Laravel, Vue.js',
  //         'url': 'http://coronanissewaard.crebos.online/#/',
  //         'img': '',
  //         'img1': ''
  //       },
  //       {
  //         'name': 'Locum Prime',
  //         'image':
  //             'https://kretoss.com/wp-content/uploads/2023/01/Locume-prime.jpg',
  //         'desc': 'Angular, Codeigniter',
  //         'url': 'https://www.locumprime.co.uk/',
  //         'img': '',
  //         'img1': ''
  //       },
  //       {
  //         'name': 'Trust Arthur Group',
  //         'image':
  //             'https://kretoss.com/wp-content/uploads/2022/12/trust-arthur-group.png',
  //         'desc': 'Python, ReactJS',
  //         'url': 'https://trustarthurgroup.com/',
  //         'img': '',
  //         'img1': ''
  //       },
  //       {
  //         'name': 'Go Parent',
  //         'image':
  //             'https://kretoss.com/wp-content/uploads/2022/10/go-parent.png',
  //         'desc': '.Net, Angular',
  //         'url': 'https://admin.goparent.app/login',
  //         'img': '',
  //         'img1': ''
  //       },
  //       {
  //         'name': 'Stunited',
  //         'image':
  //             'https://kretoss.com/wp-content/uploads/2022/10/stunited-logo.png',
  //         'desc': 'Node.js, Vue.js',
  //         'url': 'https://www.stunited.org/',
  //         'img': '',
  //         'img1': ''
  //       },
  //       {
  //         'name': 'Resume Developer',
  //         'image':
  //             'https://kretoss.com/wp-content/uploads/2022/08/resume-developer.png',
  //         'desc': 'HTML & jQuery',
  //         'url': 'https://kretoss.in/project/animation/',
  //         'img': '',
  //         'img1': ''
  //       },
  //       {
  //         'name': 'Santechnikos Center',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/sante.png',
  //         'desc': 'Angular & Node.js',
  //         'url': 'https://www.santechnikos-centras.lt/',
  //         'img': '',
  //         'img1': ''
  //       },
  //       {
  //         'name': 'Schoolmart',
  //         'image':
  //             'https://kretoss.com/wp-content/uploads/2022/07/school-mart.png',
  //         'desc': 'Open CMS',
  //         'url': 'https://schoolmart.ng/',
  //         'img': '',
  //         'img1': ''
  //       },
  //       {
  //         'name': 'Neill Estate Agents',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/neil.png',
  //         'desc': 'PHP & Laravel',
  //         'url': 'https://www.neillestateagents.co.uk/',
  //         'img': '',
  //         'img1': ''
  //       },
  //       {
  //         'name': 'Tageze',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/tageze.png',
  //         'desc': 'Laravel',
  //         'url': 'https://mytagezeshop.com/',
  //         'img': '',
  //         'img1': ''
  //       },
  //     ],
  //   },
  //   {
  //     'title': 'Shopify',
  //     'data': [
  //       {
  //         'name': 'Classics Curves',
  //         'image':
  //             'https://kretoss.com/wp-content/uploads/2022/08/classics-curves.png',
  //         'desc': 'Shopify',
  //         'url': 'https://classicscurves.com/',
  //         'img': '',
  //         'img1': ''
  //       },
  //       {
  //         'name': 'Ultimate Ears',
  //         'image':
  //             'https://kretoss.com/wp-content/uploads/2022/07/ultimate.png',
  //         'desc': 'Shopify',
  //         'img': '',
  //         'img1': '',
  //         'url': 'https://custom.ultimateears.com/products/ue-fits'
  //       },
  //       {
  //         'name': 'Vegamour',
  //         'image':
  //             'https://kretoss.com/wp-content/uploads/2022/07/vegamour.png',
  //         'desc': 'Shopify',
  //         'img': '',
  //         'img1': '',
  //         'url': 'https://vegamour.com/'
  //       },
  //       {
  //         'name': 'Zero Gravity',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/zgla.png',
  //         'desc': 'Shopify',
  //         'url': 'https://www.zgla.com/',
  //         'img': '',
  //         'img1': ''
  //       },
  //       {
  //         'name': 'Boxraw',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/boxraw.png',
  //         'desc': 'Shopify',
  //         'url': 'https://boxraw.com/',
  //         'img': '',
  //         'img1': ''
  //       },
  //       {
  //         'name': 'Hydro Peptide',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/hydro.png',
  //         'desc': 'Shopify',
  //         'url': 'https://hydropeptide.com/',
  //         'img': '',
  //         'img1': ''
  //       },
  //       {
  //         'name': 'Vitality',
  //         'image':
  //             'https://kretoss.com/wp-content/uploads/2022/07/vitality.png',
  //         'desc': 'Shopify',
  //         'url': 'https://www.vitalityextracts.com/',
  //         'img': '',
  //         'img1': ''
  //       },
  //       {
  //         'name': 'Vacurect',
  //         'image':
  //             'https://kretoss.com/wp-content/uploads/2022/07/vacurect.png',
  //         'url': 'https://www.vacurect-india.com/',
  //         'desc': 'Shopify',
  //         'img': '',
  //         'img1': ''
  //       },
  //       {
  //         'name': 'Beadspoint',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/beads.png',
  //         'desc': 'Shopify',
  //         'url': 'https://beadspoint.com/',
  //         'img': '',
  //         'img1': ''
  //       },
  //       {
  //         'name': 'Resipsausa',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/res.png',
  //         'desc': 'Shopify',
  //         'url': 'https://resipsausa.com/',
  //         'img': '',
  //         'img1': ''
  //       },
  //       {
  //         'name': 'Rockwell Nutrition',
  //         'image':
  //             'https://kretoss.com/wp-content/uploads/2022/07/rockwell.png',
  //         'desc': 'Shopify',
  //         'url': 'https://rockwellnutrition.com/your-quality-supplement-store',
  //         'img': '',
  //         'img1': ''
  //       },
  //       {
  //         'name': 'Project Furniture',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/project.png',
  //         'desc': 'Shopify',
  //         'url': 'https://www.projectsfurniture.com/',
  //         'img': '',
  //         'img1': ''
  //       },
  //       {
  //         'name': 'The Source Bulk Foods',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/source.png',
  //         'desc': 'Shopify',
  //         'url': 'https://thesourcebulkfoods.ie/',
  //         'img': '',
  //         'img1': ''
  //       },
  //       {
  //         'name': 'forager',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/fora.png',
  //         'desc': 'Shopify',
  //         'url': 'https://forager.bio/',
  //         'img': '',
  //         'img1': ''
  //       },
  //       {
  //         'name': 'Anveshan Farm Technologies',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/anve.png',
  //         'desc': 'Shopify',
  //         'url': 'https://www.anveshan.farm/',
  //         'img': '',
  //         'img1': ''
  //       },
  //     ],
  //   },
  //   {
  //     'title': 'Magento',
  //     'data': [
  //       {
  //         'name': 'Wolverine Guns & Tackle',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/wolveri.png',
  //         'desc': 'Magento',
  //         'url': 'https://www.wolverinegt.ca/',
  //         'img': '',
  //         'img1': ''
  //       },
  //       {
  //         'name': 'RV Stickers',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/rvst.png',
  //         'desc': 'Magento',
  //         'url': 'https://www.rvstickers.com.au/',
  //         'img': '',
  //         'img1': ''
  //       },
  //       {
  //         'name': 'Automaximizer',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/auto.png',
  //         'desc': 'Magento',
  //         'url': 'https://www.automaximizer.com/',
  //         'img': '',
  //         'img1': ''
  //       },
  //       {
  //         'name': 'The RTA Store',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/rta.png',
  //         'desc': 'Magento',
  //         'url': 'https://www.thertastore.com/',
  //         'img': '',
  //         'img1': ''
  //       },
  //     ],
  //   },
  //   {
  //     'title': 'Wordpress',
  //     'data': [
  //       {
  //         'name': 'Smart Secure Solutions',
  //         'image':
  //             'https://kretoss.com/wp-content/uploads/2022/12/smart-secure-solutions.png',
  //         'desc': 'Wordpress',
  //         'url': 'https://smartsecure.net.in/',
  //         'img': '',
  //         'img1': ''
  //       },
  //       {
  //         'name': 'EasyGold24',
  //         'image':
  //             'https://kretoss.com/wp-content/uploads/2022/11/easy-gold-24.png',
  //         'desc': 'Wordpress',
  //         'url': 'https://easygold24.de/',
  //         'img': '',
  //         'img1': '',
  //       },
  //       {
  //         'name': 'Lux Lash Brow Bar',
  //         'image':
  //             'https://kretoss.com/wp-content/uploads/2022/08/lux-lash-brow-bar.png',
  //         'desc': 'Wordpress',
  //         'url': 'https://luxlashandbrowbar.com/',
  //         'img': '',
  //         'img1': ''
  //       },
  //       {
  //         'name': 'Sobel',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/sob.png',
  //         'desc': 'Wordpress',
  //         'url': 'https://www.sobelconsult.com/',
  //         'img': '',
  //         'img1': ''
  //       },
  //       {
  //         'name': 'Houseys',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/hou.png',
  //         'desc': 'Wordpress',
  //         'url': 'https://houseys.com/lt/',
  //         'img': '',
  //         'img1': ''
  //       },
  //       {
  //         'name': 'Pharmegic Healthcare',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/pha.png',
  //         'desc': 'Wordpress',
  //         'url': 'https://pharmegichealthcare.com/',
  //         'img': '',
  //         'img1': ''
  //       },
  //       {
  //         'name': 'King\'s Community Church',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/king.png',
  //         'desc': 'Wordpress',
  //         'url': 'http://kcc.org.uk/',
  //         'img': '',
  //         'img1': ''
  //       },
  //       {
  //         'name': 'Jan Kent Hair',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/jan.png',
  //         'desc': 'Wordpress',
  //         'url': 'https://www.jankenthair.co.uk/',
  //         'img': '',
  //         'img1': ''
  //       },
  //       {
  //         'name': 'Lyph',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/lyph.png',
  //         'desc': 'Wordpress',
  //         'url': 'https://www.lyph.co.uk/',
  //         'img': '',
  //         'img1': ''
  //       },
  //       {
  //         'name': 'Meridian Pacific Properties',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/mer.png',
  //         'desc': 'Wordpress',
  //         'url': 'https://meridianpacificproperties.com/',
  //         'img': '',
  //         'img1': ''
  //       },
  //       {
  //         'name': 'Hanky Panky',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/han.png',
  //         'desc': 'Wordpress',
  //         'url': 'https://hankypankychester.com/',
  //         'img': '',
  //         'img1': ''
  //       },
  //       {
  //         'name': 'Worlds Pilot',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/wor.png',
  //         'desc': 'Wordpress',
  //         'url':
  //             'https://chrome.google.com/webstore/detail/weather-in/jpflgehebdhjjcdojdloemfeflelhmoh',
  //         'img': '',
  //         'img1': ''
  //       },
  //       {
  //         'name': 'Beepec',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/bee.png',
  //         'desc': 'Wordpress',
  //         'url': 'https://beepec.com/',
  //         'img': '',
  //         'img1': ''
  //       },
  //       {
  //         'name': 'Tourist State',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/tou.png',
  //         'desc': 'Wordpress',
  //         'url': 'https://touriststate.com/',
  //         'img': '',
  //         'img1': ''
  //       },
  //       {
  //         'name': 'Gaufrea',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/gau.png',
  //         'desc': 'Wordpress',
  //         'url': 'https://www.gaufrea.com/',
  //         'img': '',
  //         'img1': ''
  //       },
  //       {
  //         'name': 'Verslo Pardavimas',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/ver.png',
  //         'desc': 'Wordpress',
  //         'url': 'https://verslopardavimas.lt/',
  //         'img': '',
  //         'img1': ''
  //       },
  //       {
  //         'name': 'Chloey Turner',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/chl.png',
  //         'desc': 'Wordpress',
  //         'url': 'https://chloeyturner.com/',
  //         'img': '',
  //         'img1': ''
  //       },
  //       {
  //         'name': 'Boptech',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/bop.png',
  //         'desc': 'Wordpress',
  //         'url': 'https://boptech.se/',
  //         'img': '',
  //         'img1': ''
  //       },
  //       {
  //         'name': 'Reicuri',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/rei.png',
  //         'desc': 'Wordpress',
  //         'url': 'https://www.reicuri.com/',
  //         'img': '',
  //         'img1': ''
  //       },
  //       {
  //         'name': 'Aviva Insurance Adjusters',
  //         'image':
  //             'https://kretoss.com/wp-content/uploads/2022/07/imgpsh_fullsize_anim.png',
  //         'desc': 'Wordpress',
  //         'url': 'https://avivapa.com/',
  //         'img': '',
  //         'img1': ''
  //       },
  //     ],
  //   },
  //   {
  //     'title': 'E-commerce',
  //     'data': [
  //       {
  //         'name': 'Boeing',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/boe.png',
  //         'desc': 'Angular & Node.js',
  //         'url': 'https://kretoss.com/portfolio/',
  //         'img': '',
  //         'img1': ''
  //       },
  //       {
  //         'name': 'Ultimate Ears',
  //         'image':
  //             'https://kretoss.com/wp-content/uploads/2022/07/ultimate.png',
  //         'desc': 'Shopify',
  //         'url': 'https://custom.ultimateears.com/products/ue-fits',
  //         'img': '',
  //         'img1': ''
  //       },
  //       {
  //         'name': 'Santechnikos Center',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/sante.png',
  //         'desc': 'Angular & Node.js',
  //         'url': 'https://www.santechnikos-centras.lt/',
  //         'img': '',
  //         'img1': ''
  //       },
  //       {
  //         'name': 'Cooliemon',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/coo.png',
  //         'desc': 'Angular & Node.js',
  //         'url': 'https://www.cooliemon.com/',
  //         'img': '',
  //         'img1': ''
  //       },
  //       {
  //         'name': 'S.H. Carter Development',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/car.png',
  //         'desc': 'Angular & Node.js',
  //         'url': 'https://shcarterinc.com/',
  //         'img': '',
  //         'img1': ''
  //       },
  //       {
  //         'name': 'Vivakur',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/viva.png',
  //         'desc': 'Angular & Node.js',
  //         'url': 'https://www.vivakur.com/',
  //         'img': '',
  //         'img1': ''
  //       },
  //       {
  //         'name': 'WebND',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/webnd.png',
  //         'desc': 'Angular & Node.js',
  //         'url': 'https://webnd.com/',
  //         'img': '',
  //         'img1': ''
  //       },
  //       {
  //         'name': 'Zero Gravity',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/zgla.png',
  //         'desc': 'Shopify',
  //         'url': 'https://www.zgla.com/',
  //         'img': '',
  //         'img1': ''
  //       },
  //       {
  //         'name': 'Boxraw',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/boxraw.png',
  //         'desc': 'Shopify',
  //         'url': 'https://boxraw.com/',
  //         'img': '',
  //         'img1': ''
  //       },
  //       {
  //         'name': 'Hydro Peptide',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/hydro.png',
  //         'desc': 'Shopify',
  //         'url': 'https://hydropeptide.com/',
  //       },
  //       {
  //         'name': 'Vitality',
  //         'image':
  //             'https://kretoss.com/wp-content/uploads/2022/07/vitality.png',
  //         'desc': 'Shopify',
  //         'url': 'https://www.vitalityextracts.com/'
  //       },
  //       {
  //         'name': 'Vacurect',
  //         'image':
  //             'https://kretoss.com/wp-content/uploads/2022/07/vacurect.png',
  //         'desc': 'Shopify',
  //         'url': 'https://www.vacurect-india.com/'
  //       },
  //       {
  //         'name': 'Beadspoint',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/beads.png',
  //         'desc': 'Shopify',
  //         'url': 'https://beadspoint.com/'
  //       },
  //       {
  //         'name': 'Resipsausa',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/res.png',
  //         'desc': 'Shopify',
  //         'url': 'https://resipsausa.com/'
  //       },
  //       {
  //         'name': 'Rockwell Nutrition',
  //         'image':
  //             'https://kretoss.com/wp-content/uploads/2022/07/rockwell.png',
  //         'desc': 'Shopify',
  //         'url': 'https://rockwellnutrition.com/your-quality-supplement-store'
  //       },
  //       {
  //         'name': 'Project Furniture',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/project.png',
  //         'desc': 'Shopify',
  //         'url': 'https://www.projectsfurniture.com/'
  //       },
  //       {
  //         'name': 'Forager',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/fora.png',
  //         'desc': 'Shopify',
  //         'url': 'https://forager.bio/'
  //       },
  //       {
  //         'name': 'Anveshan Farm Technologies',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/anve.png',
  //         'desc': 'Shopify',
  //         'url': 'https://www.anveshan.farm/'
  //       },
  //     ],
  //   },
  //   {
  //     'title': 'UI/UX',
  //     'data': [
  //       {
  //         'name': 'Boeing',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/boe.png',
  //         'desc': 'Angular & Node.js',
  //         'url': 'https://kretoss.com/portfolio/'
  //       },
  //       {
  //         'name': 'Ultimate Ears',
  //         'image':
  //             'https://kretoss.com/wp-content/uploads/2022/07/ultimate.png',
  //         'desc': 'Shopify',
  //         'url': 'https://custom.ultimateears.com/products/ue-fits'
  //       },
  //       {
  //         'name': 'Santechnikos Centras',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/sante.png',
  //         'desc': 'Angular & Node.js',
  //         'url': 'https://www.santechnikos-centras.lt/'
  //       },
  //       {
  //         'name': 'Cooliemon',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/coo.png',
  //         'desc': 'Angular & Node.js',
  //         'url': 'https://www.cooliemon.com/'
  //       },
  //       {
  //         'name': 'S.H. Carter Development',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/car.png',
  //         'desc': 'Angular & Node.js',
  //         'url': 'https://shcarterinc.com/'
  //       },
  //       {
  //         'name': 'Vivakur',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/viva.png',
  //         'desc': 'Angular & Node.js',
  //         'url': 'https://www.vivakur.com/'
  //       },
  //       {
  //         'name': 'WebND',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/webnd.png',
  //         'desc': 'Angular & Node.js',
  //         'url': 'https://webnd.com/'
  //       },
  //       {
  //         'name': 'Zero Gravity',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/zgla.png',
  //         'desc': 'Shopify',
  //         'url': 'https://www.zgla.com/'
  //       },
  //       {
  //         'name': 'Boxraw',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/boxraw.png',
  //         'desc': 'Shopify',
  //         'url': 'https://boxraw.com/'
  //       },
  //       {
  //         'name': 'Hydro Peptide',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/hydro.png',
  //         'desc': 'Shopify',
  //         'url': 'https://hydropeptide.com/'
  //       },
  //       {
  //         'name': 'Vitality',
  //         'image':
  //             'https://kretoss.com/wp-content/uploads/2022/07/vitality.png',
  //         'desc': 'Shopify',
  //         'url': 'https://www.vitalityextracts.com/'
  //       },
  //       {
  //         'name': 'Vacurect',
  //         'image':
  //             'https://kretoss.com/wp-content/uploads/2022/07/vacurect.png',
  //         'desc': 'Shopify',
  //         'url': 'https://www.vacurect-india.com/'
  //       },
  //       {
  //         'name': 'Beadspoint',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/beads.png',
  //         'desc': 'Shopify',
  //         'url': 'https://beadspoint.com/'
  //       },
  //       {
  //         'name': 'Resipsausa',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/res.png',
  //         'desc': 'Shopify',
  //         'url': 'https://resipsausa.com/'
  //       },
  //       {
  //         'name': 'Rockwell Nutrition',
  //         'image':
  //             'https://kretoss.com/wp-content/uploads/2022/07/rockwell.png',
  //         'desc': 'Shopify',
  //         'url': 'https://rockwellnutrition.com/your-quality-supplement-store'
  //       },
  //       {
  //         'name': 'Project Furniture',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/project.png',
  //         'desc': 'Shopify',
  //         'url': 'https://www.projectsfurniture.com/'
  //       },
  //       {
  //         'name': 'Forager',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/fora.png',
  //         'desc': 'Shopify',
  //         'url': 'https://forager.bio/'
  //       },
  //       {
  //         'name': 'Anveshan Farm Technologies',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/anve.png',
  //         'desc': 'Shopify',
  //         'url': 'https://www.anveshan.farm/'
  //       },
  //     ],
  //   },
  //   {
  //     'title': 'Hubspot',
  //     'data': [
  //       {
  //         'name': 'Car Care',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/grt.png',
  //         'desc': 'Hubspot',
  //         'url': 'https://www.getrenees.com/'
  //       },
  //       {
  //         'name': 'Aroconllc',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/aro.png',
  //         'desc': 'Hubspot',
  //         'url': 'https://www.aroconllc.com/'
  //       },
  //       {
  //         'name': 'Intempt',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/int.png',
  //         'desc': 'Hubspot',
  //         'url': 'https://www.intempt.com/'
  //       },
  //       {
  //         'name': 'ONE',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/one.png',
  //         'desc': 'Hubspot',
  //         'url': 'https://www.onefc.com/'
  //       },
  //       {
  //         'name': 'Connfair',
  //         'image':
  //             'https://kretoss.com/wp-content/uploads/2022/07/connfair.png',
  //         'desc': 'Hubspot',
  //         'url': 'https://connfair.com/'
  //       },
  //     ],
  //   },
  //   {
  //     'title': 'Web Design',
  //     'data': [
  //       {
  //         'name': 'Skin Dao',
  //         'image':
  //             'https://kretoss.com/wp-content/uploads/2022/11/skin-dao.png',
  //         'desc': 'JavaScript, jQuery, ReactJS',
  //         'url': 'https://skincare-adaa1.web.app/'
  //       },
  //       {
  //         'name': 'Atopic Diary',
  //         'image':
  //             'https://kretoss.com/wp-content/uploads/2022/08/atopic-diary.png',
  //         'desc': 'CSS, HTML, JavaScript, jQuery',
  //         'url': 'https://kretoss.in/project/atopic-diary/'
  //       },
  //       {
  //         'name': 'Better Quest',
  //         'image':
  //             'https://kretoss.com/wp-content/uploads/2022/08/better-quest-portfolio.png',
  //         'desc': 'Bootstrap, CSS, HTML, JavaScript',
  //         'url': 'https://kretoss.in/project/better-quest/home.html'
  //       },
  //       {
  //         'name': 'Santechnikos Centras',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/sante.png',
  //         'desc': 'Angular & Node.js',
  //         'url': 'https://www.santechnikos-centras.lt/'
  //       },
  //       {
  //         'name': 'Houseys',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/hou.png',
  //         'desc': 'Wordpress',
  //         'url': 'https://houseys.com/lt/'
  //       },
  //       {
  //         'name': 'Gaufrea',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/gau.png',
  //         'desc': 'Wordpress',
  //         'url': 'https://www.gaufrea.com/'
  //       },
  //       {
  //         'name': 'Chloey Turner',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/chl.png',
  //         'desc': 'Wordpress',
  //         'url': 'https://chloeyturner.com/'
  //       },
  //     ],
  //   },
  //   {
  //     'title': 'MobileApp',
  //     'data': [
  //       {
  //         'name': 'CleverDo App',
  //         'image':
  //             'https://kretoss.com/wp-content/uploads/2023/01/cleverdo-app.png',
  //         'desc': 'iOS Swift, Native Android',
  //         'url':
  //             'https://play.google.com/store/apps/details?id=com.cleverdo.customer&hl=en_IN&gl=US'
  //       },
  //       {
  //         'name': 'GTI',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/gti-ss.png',
  //         'desc': 'React Native',
  //         'url':
  //             'https://play.google.com/store/apps/details?id=com.essence.gujarattilesinfo'
  //       },
  //       {
  //         'name': 'Bible Verses & Quotes Keyboard',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/07/bible.png',
  //         'desc': 'iOS, Native Android',
  //         'url':
  //             'https://play.google.com/store/apps/details?id=com.verkkostadi.bibleversesandquotes'
  //       },
  //       {
  //         'name': 'My ActiveLab',
  //         'image':
  //             'https://kretoss.com/wp-content/uploads/2022/07/active-lab.png',
  //         'desc': 'React Native',
  //         'url': 'https://play.google.com/store/apps/details?id=com.activelab'
  //       },
  //       {
  //         'name': 'Frogig',
  //         'image':
  //             'https://kretoss.com/wp-content/uploads/2022/07/frogig-freelancing-marketplace.png',
  //         'desc': 'Flutter',
  //         'url':
  //             'https://play.google.com/store/apps/details?id=com.kretoss.frogig&hl=en_IN&gl=US'
  //       },
  //       {
  //         'name': 'Kids Learning',
  //         'image':
  //             'https://kretoss.com/wp-content/uploads/2022/05/kids-game.png',
  //         'desc': 'Unity 2D',
  //         'url':
  //             'https://play.google.com/store/apps/details?id=com.Kretoss.KidLearn'
  //       },
  //       {
  //         'name': 'Stadium',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/05/stadium.png',
  //         'desc': 'React Native',
  //         'url': 'https://play.google.com/store/apps/details?id=com.stadiumae'
  //       },
  //       {
  //         'name': 'ATEY-20',
  //         'image': 'https://kretoss.com/wp-content/uploads/2022/05/atey-20.png',
  //         'desc': 'React Native',
  //         'url': 'https://play.google.com/store/apps/details?id=com.aty'
  //       },
  //     ],
  //   },
  // ];

  List<PortList> portDetail = [];
  Future<List<PortList>> getData() async {
    var headers = {
      'authorization':
          'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsIm5hbWUiOiJLcmV0b3NzIFRlY2hub2xvZ3kiLCJpYXQiOjE2ODE4ODU3NDYsImV4cCI6MTgzOTU2NTc0Nn0.Pb653AQ5qcSe8sZMZvLACypoqTzPjhbkvaeSgCQ6zqo'
    };
    final response = await http.get(
        Uri.parse(
          'https://kretoss.in/project/kretoss_wp/wp-json/wp/v2/portfolio',
        ),
        headers: headers);
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      portDetail.clear();
      for (Map<String, dynamic> index in data) {
        portDetail.add(PortList.fromJson(index));
      }
      return portDetail;
    } else {
      return portDetail;
    }
  }

  List<BlogImage> blogDetail1 = [];
  Future<BlogImage?> getData1(int index) async {
    var headers = {
      'authorization':
          'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsIm5hbWUiOiJLcmV0b3NzIFRlY2hub2xvZ3kiLCJpYXQiOjE2ODE4ODU3NDYsImV4cCI6MTgzOTU2NTc0Nn0.Pb653AQ5qcSe8sZMZvLACypoqTzPjhbkvaeSgCQ6zqo'
    };
    final response = await http.get(
        Uri.parse(
            'https://kretoss.in/project/kretoss_wp/wp-json/wp/v2/media/${portDetail[index].featuredMedia}'),
        headers: headers);
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      BlogImage blog = BlogImage.fromJson(data as Map<String, dynamic>);
      blogDetail1.add(blog);
      return blog;
    } else {
      return null;
    }
  }

  String press = '';
  int select = 0;
  // ignore: non_constant_identifier_names
  bool button_hide = false;

  int press1 = 0;
  int itemCount = 4; // initial color

  // void _loadMoreData() {
  //   // Add logic here to load more data
  //   setState(() {
  //     button_hide = true;
  //   });
  // }

  //List originalItems = [];
  // int i = 0;
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final mediaQuery = MediaQuery.of(context);
    // ignore: unused_local_variable
    int count = 0;
    return Container(
      // height: (mediaQuery.size.height - mediaQuery.padding.top) * 13.9,
      // width: 500,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 30.0, left: 15.0),
            child: Text(
              'Our Project',
              // ignore: use_full_hex_values_for_flutter_colors
              textScaleFactor: 1.2,
              style: GoogleFonts.sourceSansPro(
                  color: Color(0xffC75C6F), fontSize: 15),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0, top: 15.0, right: 15.0),
            child: Text(
              'Some of our finest work',
              textScaleFactor: 1.5,
              style: GoogleFonts.sourceSansPro(
                  fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(left: 15.0, top: 25.0, bottom: 15.0),
          //   // ignore: avoid_unnecessary_containers
          //   child: Container(
          //     child: GridView.builder(
          //       physics: const ScrollPhysics(),
          //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //         crossAxisCount: 2,
          //         childAspectRatio: 1,
          //         crossAxisSpacing: 5,
          //         mainAxisExtent: 20,
          //         mainAxisSpacing: 5,
          //       ),
          //       shrinkWrap: true,
          //       itemCount: products.length,
          //       itemBuilder: (BuildContext context, index) {
          //         return Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           mainAxisAlignment: MainAxisAlignment.start,
          //           children: [
          //             InkWell(
          //               child: Text(
          //                 products[index]['title'],
          //                 style: GoogleFonts.sourceSansPro(
          //                     color: (select == index)
          //                         ? Colors.black
          //                         : const Color(0xff525260),
          //                     fontWeight: (select == index)
          //                         ? FontWeight.bold
          //                         : FontWeight.normal,
          //                     fontSize: 15),
          //               ),
          //               onTap: () {
          //                 setState(() {
          //                   press = products[index]['title'];
          //                   select = index;
          //                 });
          //               },
          //             ),
          //           ],
          //         );
          //       },
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50.0),
            child: FutureBuilder(
                future: getData(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      physics: const ScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: portDetail.length,
                      itemBuilder: (BuildContext context, int index) {
                        return
                            // (press == '')
                            //     ? InkWell(
                            //         onTap: () async {
                            //           var url = Uri.parse(
                            //               products[select]['data'][index]['url']);
                            //           if (await canLaunchUrl(url)) {
                            //             await launchUrl(url);
                            //           } else {
                            //             throw 'Could not launch $url';
                            //           }
                            //         },
                            //         child: Column(
                            //           children: [
                            //             Padding(
                            //               padding: const EdgeInsets.only(
                            //                   left: 15.0,
                            //                   right: 15.0,
                            //                   top: 15.0,
                            //                   bottom: 15.0),
                            //               child: Card(
                            //                 shape: RoundedRectangleBorder(
                            //                     borderRadius:
                            //                         BorderRadiusDirectional.circular(
                            //                             30)),
                            //                 elevation: 1,
                            //                 color: const Color(0xffffffff),
                            //                 child: Container(
                            //                   // width: 540,
                            //                   // height: 400,
                            //                   child: Column(
                            //                     mainAxisAlignment:
                            //                         MainAxisAlignment.start,
                            //                     crossAxisAlignment:
                            //                         CrossAxisAlignment.start,
                            //                     children: [
                            //                       Padding(
                            //                         padding: const EdgeInsets.only(
                            //                             top: 0.0,
                            //                             left: 0.0,
                            //                             right: 0.0),
                            //                         child: ClipRRect(
                            //                           borderRadius:
                            //                               const BorderRadius.only(
                            //                                   topLeft:
                            //                                       Radius.circular(30),
                            //                                   topRight:
                            //                                       Radius.circular(
                            //                                           30)),
                            //                           child: Image.network(
                            //                             products[select]['data']
                            //                                 [index]['image'],
                            //                             fit: BoxFit.cover,
                            //                             height: 260,
                            //                             width: 490,
                            //                           ),
                            //                         ),
                            //                       ),
                            //                       Padding(
                            //                         padding: const EdgeInsets.only(
                            //                             top: 25.0, left: 35.0),
                            //                         child: Text(
                            //                           products[select]['data'][index]
                            //                               ['name'],
                            //                           style:
                            //                               GoogleFonts.sourceSansPro(
                            //                                   fontSize: 20,
                            //                                   fontWeight:
                            //                                       FontWeight.bold,
                            //                                   color:
                            //                                       Color(0xff292930)),
                            //                         ),
                            //                       ),
                            //                       Padding(
                            //                         padding: const EdgeInsets.only(
                            //                             left: 35.0,
                            //                             top: 10.0,
                            //                             bottom: 25),
                            //                         child: Text(
                            //                           products[select]['data'][index]
                            //                               ['desc'],
                            //                           style:
                            //                               GoogleFonts.sourceSansPro(
                            //                                   fontSize: 15,
                            //                                   color:
                            //                                       Color(0xff404040)),
                            //                         ),
                            //                       ),
                            //                     ],
                            //                   ),
                            //                 ),
                            //               ),
                            //             ),
                            //           ],
                            //         ),
                            //       )
                            //:
                            InkWell(
                          // onTap: () async {
                          //   var url = Uri.parse(
                          //       products[select]['data'][index]['url']);
                          //   if (await canLaunchUrl(url)) {
                          //     await launchUrl(url);
                          //   } else {
                          //     throw 'Could not launch $url';
                          //   }
                          // },
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15.0,
                                    right: 15.0,
                                    top: 15.0,
                                    bottom: 15.0),
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadiusDirectional.circular(30)),
                                  elevation: 1,
                                  color: const Color(0xffffffff),
                                  child: Container(
                                    // width: 540,
                                    // height: 400,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        FutureBuilder(
                                            future: getData1(index),
                                            builder: (context, snapshot) {
                                              if (snapshot.hasData) {
                                                return Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 0.0,
                                                          left: 0.0,
                                                          right: 0.0),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    30),
                                                            topRight:
                                                                Radius.circular(
                                                                    30)),
                                                    child: Image.network(
                                                      snapshot
                                                          .data!.guid.rendered,
                                                      fit: BoxFit.cover,
                                                      height: 260,
                                                      width: 490,
                                                    ),
                                                  ),
                                                );
                                              } else {
                                                return Center(
                                                  child:
                                                      CircularProgressIndicator(),
                                                );
                                              }
                                            }),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 35.0,
                                              left: 35.0,
                                              bottom: 35.0),
                                          child: Text(
                                            portDetail[index].title.rendered,
                                            style: GoogleFonts.sourceSansPro(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xff292930)),
                                          ),
                                        ),
                                        // Padding(
                                        //   padding: const EdgeInsets.only(
                                        //       left: 35.0,
                                        //       top: 10.0,
                                        //       bottom: 35),
                                        //   child: Text(
                                        //     products[select]['data'][index]
                                        //         ['desc'],
                                        //     style: GoogleFonts.sourceSansPro(
                                        //         fontSize: 15,
                                        //         color: Color(0xff404040)),
                                        //   ),
                                        // ),
                                        if (index == 3 ||
                                            index == 4 ||
                                            index == 5 ||
                                            index == 9)
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 35.0, bottom: 35.0),
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                  'assets/images/Google-Play.png',
                                                  height: 50,
                                                  width: 100,
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10.0),
                                                  child: Image.asset(
                                                    'assets/images/App-Store.png',
                                                    height: 50,
                                                    width: 100,
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                }),
          ),
          // if (products[select]['data'].length >= 7)
          //   Center(
          //     child: Padding(
          //       padding: const EdgeInsets.only(
          //           left: 50.0, top: 15.0, right: 50.0, bottom: 15.0),
          //       child: ClipRRect(
          //           borderRadius: BorderRadius.circular(15),
          //           child: Container(
          //             height: 55,
          //             width: 200,
          //             child: ElevatedButton(
          //                 style: ElevatedButton.styleFrom(
          //                     primary: Color(0xff5956e9)),
          //                 onPressed: () {
          //                   setState(() {
          //                     int item =
          //                         products[select]['data'].length - itemCount;
          //                     if (itemCount < products[select]['data'].length) {
          //                       print('hello');
          //                       print(item);
          //                       if (itemCount < item) {
          //                         print(item);
          //                         itemCount = itemCount + item;
          //                       } else {
          //                         print('item else');
          //                         itemCount = itemCount + item;
          //                       }
          //                     } else {
          //                       print('hi');
          //                       print(item);
          //                       if (item == 0) {
          //                         print('jndjndnd');
          //                         if (itemCount ==
          //                             products[select]['data'].length) {
          //                           // (products[select]['data'].length > 8)
          //                           //     ? itemCount = 4
          //                           itemCount = 4;
          //                         }
          //                       }
          //                     }
          //                   });
          //                   //itemCount = 4;
          //                   print(itemCount);
          //                   print(products[select]['data'].length);
          //                 },
          //                 child: Text(
          //                   'Load More Projects',
          //                   style: GoogleFonts.sourceSansPro(fontSize: 19),
          //                 )),
          //           )),
          //     ),
          //   ),
        ],
      ),
    );
  }
}
