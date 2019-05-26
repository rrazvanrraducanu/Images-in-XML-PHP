<!DOCTYPE>
<html>
    <head></head>
    <body>
        <div id="content"><form method="post" action="save.php" enctype="multipart/form-data">
                <input type="hidden" name="size" value="1000000">
                ID:<input type="text" size="20" name="id">
                <div>
                    <input type="file" name="image">
                </div>
                <div>
                    <textarea name="title" cols="40" rows="4" placeholder="bla bla"></textarea>
                </div>
<div>
<input type="submit" name="upload" value="Upload Image">
                </div>
            </form>
        </div>
    </body>
</html>
