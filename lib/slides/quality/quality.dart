import '../what_if_slide.dart';
import 'basic_state_management_slide.dart';
import 'five_nines_availability_slide.dart';
import 'optimistic/optimistic.dart';
import 'quality_section_slide.dart';
import 'quality_summary_slide.dart';
import 'react_use_optimistic_slide.dart';
import 'state_management_slide.dart';

final qualitySectionSlides = [
  const QualitySectionSlide(),
  const StateManagementSlide(),
  const BasicStateManagementSlide(),
  const FiveNinesAvailabilitySlide(),
  WhatIfSlide('quality'),
  const OptimisticStateManagementSlide(),
  const OptimisticStateDemoSlide(),
  const ReactUseOptimisticSlide(),
  const QualitySummarySlide(),
];
