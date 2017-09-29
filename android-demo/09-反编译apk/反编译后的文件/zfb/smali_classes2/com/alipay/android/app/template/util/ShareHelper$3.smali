.class Lcom/alipay/android/app/template/util/ShareHelper$3;
.super Ljava/lang/Object;
.source "ShareHelper.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;


# instance fields
.field private final synthetic a:Lcom/alipay/mobile/common/share/ShareContent;

.field private final synthetic b:Lcom/alipay/mobile/framework/service/ShareService;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/share/ShareContent;Lcom/alipay/mobile/framework/service/ShareService;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/util/ShareHelper$3;->a:Lcom/alipay/mobile/common/share/ShareContent;

    iput-object p2, p0, Lcom/alipay/android/app/template/util/ShareHelper$3;->b:Lcom/alipay/mobile/framework/service/ShareService;

    iput p3, p0, Lcom/alipay/android/app/template/util/ShareHelper$3;->c:I

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPluginKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    const-string/jumbo v0, "DynamicApp"

    return-object v0
.end method

.method public process(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 186
    invoke-static {p2}, Lcom/alipay/android/app/template/util/ShareHelper;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 187
    invoke-static {v0}, Lcom/alipay/android/app/template/util/ShareHelper;->b(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/alipay/android/app/template/util/ShareHelper$3;->a:Lcom/alipay/mobile/common/share/ShareContent;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/share/ShareContent;->getExtraInfo()Ljava/util/HashMap;

    move-result-object v1

    const-string/jumbo v2, "thumbData"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string/jumbo v0, "20001002"

    iget-object v1, p0, Lcom/alipay/android/app/template/util/ShareHelper$3;->b:Lcom/alipay/mobile/framework/service/ShareService;

    iget v2, p0, Lcom/alipay/android/app/template/util/ShareHelper$3;->c:I

    iget-object v3, p0, Lcom/alipay/android/app/template/util/ShareHelper$3;->a:Lcom/alipay/mobile/common/share/ShareContent;

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/template/util/ShareHelper;->a(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ShareService;ILcom/alipay/mobile/common/share/ShareContent;)V

    .line 190
    const/4 v0, 0x0

    return-object v0
.end method
