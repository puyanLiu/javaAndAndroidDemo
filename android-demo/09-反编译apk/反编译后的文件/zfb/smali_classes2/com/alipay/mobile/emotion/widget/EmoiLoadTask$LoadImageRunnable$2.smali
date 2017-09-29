.class Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable$2;
.super Ljava/lang/Object;
.source "EmoiLoadTask.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilecommon/multimedia/file/APFileDownCallback;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable;

.field private final synthetic val$isStop:Z

.field private final synthetic val$model:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable;ZLcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable$2;->this$1:Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable;

    iput-boolean p2, p0, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable$2;->val$isStop:Z

    iput-object p3, p0, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable$2;->val$model:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable$2;)Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable$2;->this$1:Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable;

    return-object v0
.end method


# virtual methods
.method public onDownloadBatchProgress(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;IIJJ)V
    .locals 0

    .prologue
    .line 198
    return-void
.end method

.method public onDownloadError(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileDownloadRsp;)V
    .locals 2

    .prologue
    .line 193
    const-string/jumbo v0, "AAA"

    invoke-virtual {p2}, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileDownloadRsp;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public onDownloadFinished(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileDownloadRsp;)V
    .locals 4

    .prologue
    .line 161
    :try_start_0
    new-instance v1, Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {p2}, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileDownloadRsp;->getFileReq()Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;->getSavePath()Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-direct {v1, v0}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Ljava/lang/String;)V

    .line 163
    iget-boolean v0, p0, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable$2;->val$isStop:Z

    if-eqz v0, :cond_1

    .line 164
    invoke-virtual {v1}, Lpl/droidsonroids/gif/GifDrawable;->stop()V

    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable$2;->val$model:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    invoke-static {v0, v1}, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->getBitmapFromGif(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;Lpl/droidsonroids/gif/GifDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 166
    iget-object v2, p0, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable$2;->val$model:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    invoke-static {v2}, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->getTempPath(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)Ljava/lang/String;

    move-result-object v2

    .line 167
    if-eqz v0, :cond_0

    .line 168
    invoke-static {v0, v2}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->saveBitmapFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-static {}, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask;->access$0()Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable$2$1;

    invoke-direct {v3, p0, v2}, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable$2$1;-><init>(Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable$2;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 177
    :cond_0
    invoke-virtual {v1}, Lpl/droidsonroids/gif/GifDrawable;->recycle()V

    .line 187
    :goto_0
    return-void

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable$2;->this$1:Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable;->access$0(Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable;)Landroid/widget/ImageView;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable$2;->this$1:Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable;->access$0(Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable;)Landroid/widget/ImageView;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->setGifImageDrawable(Lpl/droidsonroids/gif/GifDrawable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    const-string/jumbo v1, "EmoiLoadTask"

    const-string/jumbo v2, "loadGifByFilePath error--->"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 181
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Lpl/droidsonroids/gif/GifDrawable;->stop()V

    .line 182
    invoke-virtual {v1}, Lpl/droidsonroids/gif/GifDrawable;->recycle()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onDownloadProgress(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;IJJ)V
    .locals 0

    .prologue
    .line 202
    return-void
.end method

.method public onDownloadStart(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;)V
    .locals 0

    .prologue
    .line 154
    return-void
.end method
