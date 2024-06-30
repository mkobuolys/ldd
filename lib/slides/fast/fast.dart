import '../what_if_slide.dart';
import 'app_submission_rejected_slide.dart';
import 'fast_section_slide.dart';
import 'fast_summary_slide.dart';
import 'session_replay_slide.dart';
import 'sign_in_with_apple_problem_explained_slide.dart';
import 'sign_in_with_apple_problem_slide.dart';
import 'sign_up_form_toggle_slide.dart';
import 'slow_app_review_slide.dart';

final fastSectionSlides = [
  const FastSectionSlide(),
  WhatIfSlide('fast'),
  const SlowAppReviewSlide(),
  const AppSubmissionRejectedSlide(),
  const SignInWithAppleProblemSlide(),
  const SignInWithAppleProblemExplainedSlide(),
  const SessionReplaySlide(),
  WhatIfSlide('feature-flag'),
  const SignUpFormToggleSlide(),
  const FastSummarySlide(),
];
