import '../what_if_slide.dart';
import 'five_nines_availability_slide.dart';
import 'quality_section_slide.dart';
import 'quality_summary_slide.dart';

final qualitySectionSlides = [
  const QualitySectionSlide(),
  const FiveNinesAvailabilitySlide(),
  WhatIfSlide('quality'),
  const QualitySummarySlide(),
];
