run_ui_test:
	robot tests/atdd/ui/robot/search_google/search_bluecrave_success.robot
	robot tests/atdd/ui/robot/signin_test_university/signin_test_university_fail.robot

run_api_test:
	newman run tests/atdd/api/scripts/search_and_view_github_user_success.json -e tests/atdd/api/environments/local_environment.json -d tests/atdd/api/testdata/search_and_view_github_user_success.json

run_acceptance_test:
	robot tests/atdd/ui/robot/search_google/search_bluecrave_success.robot
	robot tests/atdd/ui/robot/signin_test_university/signin_test_university_fail.robot
	newman run tests/atdd/api/scripts/search_and_view_github_user_success.json -e tests/atdd/api/environments/local_environment.json -d tests/atdd/api/testdata/search_and_view_github_user_success.json

