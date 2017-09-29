.class Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable$2$1;
.super Ljava/lang/Object;
.source "EmoiLoadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable$2;

.field private final synthetic val$tempFilePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable$2;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable$2$1;->this$2:Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable$2;

    iput-object p2, p0, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable$2$1;->val$tempFilePath:Ljava/lang/String;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 173
    invoke-static {}, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask;->access$1()Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable$2$1;->val$tempFilePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable$2$1;->this$2:Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable$2;

    invoke-static {v2}, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable$2;->access$0(Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable$2;)Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable;->access$0(Lcom/alipay/mobile/emotion/widget/EmoiLoadTask$LoadImageRunnable;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    .line 174
    return-void
.end method
