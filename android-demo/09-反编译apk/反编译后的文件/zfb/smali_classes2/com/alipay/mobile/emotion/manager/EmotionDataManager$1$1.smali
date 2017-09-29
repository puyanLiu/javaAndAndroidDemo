.class Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1$1;
.super Ljava/lang/Object;
.source "EmotionDataManager.java"

# interfaces
.implements Lcom/alipay/mobile/emotion/step/StepObserver;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1;

.field private final synthetic val$callback:Lcom/alipay/mobile/emotion/widget/AddPackageCallback;

.field private final synthetic val$emoiPackageModel:Lcom/alipay/mobile/emotion/model/EmoiPackageModel;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1;Lcom/alipay/mobile/emotion/widget/AddPackageCallback;Lcom/alipay/mobile/emotion/model/EmoiPackageModel;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1$1;->this$1:Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1;

    iput-object p2, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1$1;->val$callback:Lcom/alipay/mobile/emotion/widget/AddPackageCallback;

    iput-object p3, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1$1;->val$emoiPackageModel:Lcom/alipay/mobile/emotion/model/EmoiPackageModel;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createPreviewImg(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 268
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 289
    return-void

    .line 268
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    .line 269
    new-instance v2, Ljava/io/File;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->getTempPath(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 271
    iget-object v3, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->packageId:Ljava/lang/String;

    iget-object v4, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->emotionId:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->getImgFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 272
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 275
    :try_start_0
    new-instance v4, Lpl/droidsonroids/gif/GifDrawable;

    invoke-direct {v4, v3}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Ljava/io/File;)V

    .line 276
    invoke-virtual {v4}, Lpl/droidsonroids/gif/GifDrawable;->stop()V

    .line 277
    invoke-static {v0, v4}, Lcom/alipay/mobile/emotion/util/MagicZipFileReader;->getBitmapFromGif(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;Lpl/droidsonroids/gif/GifDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 278
    invoke-virtual {v4}, Lpl/droidsonroids/gif/GifDrawable;->recycle()V

    .line 279
    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 280
    invoke-static {v0, v2}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->saveBitmapFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->access$6()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public onStepError(Lcom/alipay/mobile/emotion/step/Step;Z)V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1$1;->val$callback:Lcom/alipay/mobile/emotion/widget/AddPackageCallback;

    const-string/jumbo v1, "json error"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/emotion/widget/AddPackageCallback;->onFail(Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method public onStepSuccess(Lcom/alipay/mobile/emotion/step/Step;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 233
    .line 234
    invoke-virtual {p1}, Lcom/alipay/mobile/emotion/step/Step;->getData()Ljava/lang/Object;

    move-result-object v0

    .line 233
    check-cast v0, Ljava/util/ArrayList;

    .line 235
    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1$1;->val$callback:Lcom/alipay/mobile/emotion/widget/AddPackageCallback;

    const-string/jumbo v1, "json error"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/emotion/widget/AddPackageCallback;->onFail(Ljava/lang/String;)V

    .line 265
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1$1;->this$1:Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1;

    invoke-static {v1}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1;->access$0(Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1;)Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1$1;->val$emoiPackageModel:Lcom/alipay/mobile/emotion/model/EmoiPackageModel;

    iget-object v2, v2, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->hasEmotionPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 240
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1$1;->val$callback:Lcom/alipay/mobile/emotion/widget/AddPackageCallback;

    invoke-interface {v0}, Lcom/alipay/mobile/emotion/widget/AddPackageCallback;->onSuccess()V

    goto :goto_0

    .line 243
    :cond_1
    invoke-direct {p0, v0}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1$1;->createPreviewImg(Ljava/util/ArrayList;)V

    .line 244
    iget-object v1, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1$1;->val$emoiPackageModel:Lcom/alipay/mobile/emotion/model/EmoiPackageModel;

    iget-object v2, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1$1;->this$1:Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1;

    invoke-static {v2}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1;->access$0(Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1;)Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 245
    const/16 v4, 0x8

    .line 244
    invoke-static {v2, v3, v4}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->access$0(Lcom/alipay/mobile/emotion/manager/EmotionDataManager;II)I

    move-result v2

    iput v2, v1, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->emotionPageNum:I

    .line 246
    iget-object v1, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1$1;->this$1:Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1;

    invoke-static {v1}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1;->access$0(Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1;)Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1$1;->val$emoiPackageModel:Lcom/alipay/mobile/emotion/model/EmoiPackageModel;

    iget-object v2, v2, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->hasEmotionPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 247
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1$1;->val$callback:Lcom/alipay/mobile/emotion/widget/AddPackageCallback;

    invoke-interface {v0}, Lcom/alipay/mobile/emotion/widget/AddPackageCallback;->onSuccess()V

    goto :goto_0

    .line 250
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1$1;->this$1:Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1;

    invoke-static {v1}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1;->access$0(Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1;)Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->access$1(Lcom/alipay/mobile/emotion/manager/EmotionDataManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v6, :cond_3

    .line 251
    iget-object v1, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1$1;->this$1:Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1;

    invoke-static {v1}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1;->access$0(Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1;)Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->access$1(Lcom/alipay/mobile/emotion/manager/EmotionDataManager;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1$1;->val$emoiPackageModel:Lcom/alipay/mobile/emotion/model/EmoiPackageModel;

    invoke-interface {v1, v6, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 255
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1$1;->this$1:Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1;

    invoke-static {v1}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1;->access$0(Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1;)Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->access$2(Lcom/alipay/mobile/emotion/manager/EmotionDataManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1$1;->val$emoiPackageModel:Lcom/alipay/mobile/emotion/model/EmoiPackageModel;

    iget-object v2, v2, Lcom/alipay/mobile/emotion/model/EmoiPackageModel;->id:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    move-result-object v0

    .line 258
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getShowCustomEmotionList(Z)Ljava/util/List;

    move-result-object v1

    .line 257
    invoke-virtual {v0, v1, v5}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->setCustomEmotionModelVOList(Ljava/util/List;Z)V

    .line 260
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1$1;->this$1:Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1;->access$0(Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1;)Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->access$3(Lcom/alipay/mobile/emotion/manager/EmotionDataManager;)V

    .line 261
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1$1;->this$1:Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1;->access$0(Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1;)Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->access$4(Lcom/alipay/mobile/emotion/manager/EmotionDataManager;)V

    .line 262
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1$1;->this$1:Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1;->access$0(Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1;)Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;->ADD:Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;

    .line 263
    iget-object v2, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1$1;->this$1:Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1;

    invoke-static {v2}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1;->access$0(Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1;)Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->access$1(Lcom/alipay/mobile/emotion/manager/EmotionDataManager;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1$1;->val$emoiPackageModel:Lcom/alipay/mobile/emotion/model/EmoiPackageModel;

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 262
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->access$5(Lcom/alipay/mobile/emotion/manager/EmotionDataManager;Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;I)V

    .line 264
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1$1;->val$callback:Lcom/alipay/mobile/emotion/widget/AddPackageCallback;

    invoke-interface {v0}, Lcom/alipay/mobile/emotion/widget/AddPackageCallback;->onSuccess()V

    goto/16 :goto_0

    .line 253
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1$1;->this$1:Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1;

    invoke-static {v1}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1;->access$0(Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1;)Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->access$1(Lcom/alipay/mobile/emotion/manager/EmotionDataManager;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/emotion/manager/EmotionDataManager$1$1;->val$emoiPackageModel:Lcom/alipay/mobile/emotion/model/EmoiPackageModel;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
