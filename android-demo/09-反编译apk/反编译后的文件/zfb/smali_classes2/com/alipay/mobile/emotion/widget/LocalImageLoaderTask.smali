.class public Lcom/alipay/mobile/emotion/widget/LocalImageLoaderTask;
.super Landroid/os/AsyncTask;
.source "LocalImageLoaderTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field public static final DOWNLOAD_TYPE_GIF_BYTE_IMAGE:I = 0x4

.field public static final DOWNLOAD_TYPE_GIF_FILE_IMAGE:I = 0x3

.field public static final DOWNLOAD_TYPE_GIF_RESOURCE_IMAGE:I = 0x5

.field public static final DOWNLOAD_TYPE_STATIC_IMAGE:I = 0x2


# instance fields
.field private final filePath:Ljava/lang/String;

.field private final imageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/alipay/mobile/emotion/widget/LocalImageLoaderTask;->filePath:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/alipay/mobile/emotion/widget/LocalImageLoaderTask;->imageView:Landroid/widget/ImageView;

    .line 30
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 35
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/widget/LocalImageLoaderTask;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 36
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 38
    iget-object v2, p0, Lcom/alipay/mobile/emotion/widget/LocalImageLoaderTask;->filePath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-array v2, v2, [B

    .line 40
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 43
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 44
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 45
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 46
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 47
    invoke-static {v2}, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->createBitmapByByte([B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 51
    :goto_1
    return-object v0

    .line 41
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    const-string/jumbo v1, "LocalImageLoaderTask"

    const-string/jumbo v2, "readEntryContent error--->>"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/emotion/widget/LocalImageLoaderTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/LocalImageLoaderTask;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 58
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/emotion/widget/LocalImageLoaderTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
