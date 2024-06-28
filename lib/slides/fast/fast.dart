import '../what_if_slide.dart';
import 'fast_section_slide.dart';
import 'fast_summary_slide.dart';
import 'slow_app_review_slide.dart';

final fastSectionSlides = [
  const FastSectionSlide(),
  WhatIfSlide('fast'),
  const SlowAppReviewSlide(),
  WhatIfSlide('feature-flag'),
  const FastSummarySlide(),
];
