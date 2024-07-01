import '../what_if_slide.dart';
import 'app_submission_rejected_slide.dart';
import 'bonus_story_section_slide.dart';
import 'fake_door_config_slide.dart';
import 'fake_door_demo_slide.dart';
import 'fake_door_intro_slide.dart';
import 'fast_section_slide.dart';
import 'fast_summary_slide.dart';
import 'feature_flags_slide.dart';
import 'firebase_remote_config_feature_flag_slide.dart';
import 'session_replay_slide.dart';
import 'sign_in_with_apple_problem_explained_slide.dart';
import 'sign_in_with_apple_problem_slide.dart';
import 'sign_up_form_toggle_slide.dart';
import 'slow_app_review_slide.dart';
import 'spahetti_method_slide.dart';

final fastSectionSlides = [
  const FastSectionSlide(),
  WhatIfSlide('fast'),
  const FakeDoorIntroSlide(),
  const SpaghettiMethodSlide(),
  const FeatureFlagsSlide(),
  const FakeDoorConfigSlide(),
  const FakeDoorDemoSlide(),
  const FastSummarySlide(),
  const BonusStorySectionSlide(),
  const SlowAppReviewSlide(),
  const AppSubmissionRejectedSlide(),
  const SignInWithAppleProblemSlide(),
  const SignInWithAppleProblemExplainedSlide(),
  const SessionReplaySlide(),
  WhatIfSlide('feature-flag'),
  const FirebaseRemoteConfigFeatureFlagSlide(),
  const SignUpFormToggleSlide(),
];
