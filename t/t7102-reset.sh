	git reset --hard > .actual &&
	echo HEAD is now at $hex $(commit_msg) > .expected &&
	test_i18ncmp .expected .actual
	git -c "i18n.logOutputEncoding=$test_encoding" reset --hard > .actual &&
	echo HEAD is now at $hex $(commit_msg $test_encoding) > .expected &&
	test_i18ncmp .expected .actual
>.diff_expect
>.cached_expect
cat >.cat_expect <<EOF
secondfile:
1st line 2nd file
2nd line 2nd file
EOF
test_expect_success 'giving a non existing revision should fail' '
test_expect_success \
	'giving paths with options different than --mixed should fail' '
test_expect_success \
	'trying to do reset --soft with pending merge should fail' '
	git checkout master &&
test_expect_success \
	'trying to do reset --soft with pending checkout merge should fail' '
	git checkout master &&
test_expect_success \
	'resetting to HEAD with no changes should succeed and do nothing' '
>.diff_expect
cat >.cached_expect <<EOF
diff --git a/secondfile b/secondfile
index $head5p1s..$head5s 100644
--- a/secondfile
+++ b/secondfile
@@ -1 +1,2 @@
-2nd file
+1st line 2nd file
+2nd line 2nd file
EOF
cat >.cat_expect <<EOF
secondfile:
1st line 2nd file
2nd line 2nd file
EOF
>.diff_expect
>.cached_expect
cat >.cat_expect <<EOF
secondfile:
1st line 2nd file
2nd line 2nd file
3rd line 2nd file
EOF
test_expect_success \
	'changing files and redo the last commit should succeed' '
>.diff_expect
>.cached_expect
cat >.cat_expect <<EOF
first:
1st file
2nd line 1st file
second:
2nd file
EOF
test_expect_success \
	'--hard reset should change the files and undo commits permanently' '
>.diff_expect
cat >.cached_expect <<EOF
diff --git a/first b/first
deleted file mode 100644
index $head5p2f..0000000
--- a/first
+++ /dev/null
@@ -1,2 +0,0 @@
-1st file
-2nd line 1st file
diff --git a/second b/second
deleted file mode 100644
index $head5p1s..0000000
--- a/second
+++ /dev/null
@@ -1 +0,0 @@
-2nd file
diff --git a/secondfile b/secondfile
new file mode 100644
index 0000000..$head5s
--- /dev/null
+++ b/secondfile
@@ -0,0 +1,2 @@
+1st line 2nd file
+2nd line 2nd file
EOF
cat >.cat_expect <<EOF
secondfile:
1st line 2nd file
2nd line 2nd file
EOF
test_expect_success \
	'redoing changes adding them without commit them should succeed' '
cat >.diff_expect <<EOF
diff --git a/first b/first
deleted file mode 100644
index $head5p2f..0000000
--- a/first
+++ /dev/null
@@ -1,2 +0,0 @@
-1st file
-2nd line 1st file
diff --git a/second b/second
deleted file mode 100644
index $head5p1s..0000000
--- a/second
+++ /dev/null
@@ -1 +0,0 @@
-2nd file
EOF
>.cached_expect
cat >.cat_expect <<EOF
secondfile:
1st line 2nd file
2nd line 2nd file
EOF
>.diff_expect
>.cached_expect
cat >.cat_expect <<EOF
secondfile:
1st line 2nd file
2nd line 2nd file
EOF

>.diff_expect
>.cached_expect
cat >.cat_expect <<EOF
secondfile:
1st line 2nd file
2nd line 2nd file
3rd line in branch2
EOF
>.diff_expect
>.cached_expect
cat >.cat_expect <<EOF
secondfile:
1st line 2nd file
2nd line 2nd file
EOF
test_expect_success \
	'--hard reset to ORIG_HEAD should clear a fast-forward merge' '
	git checkout master &&
	echo 1 > file1 &&
	echo 2 > file2 &&
	echo 3 > file3 &&
	echo 4 > file4 &&
	echo 5 > file1 &&
	git diff > output &&
	cat > expect <<-EOF &&