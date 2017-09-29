.class final Lcom/alipay/mobile/socialsdk/api/image/a;
.super Ljava/lang/Object;
.source "ImagesDownloader.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APDisplayer;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/api/image/ImagesDownloader;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcom/alipay/mobile/socialsdk/api/image/ImagesLoadCallBack;

.field private final synthetic d:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/api/image/ImagesDownloader;Ljava/lang/String;Lcom/alipay/mobile/socialsdk/api/image/ImagesLoadCallBack;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/api/image/a;->a:Lcom/alipay/mobile/socialsdk/api/image/ImagesDownloader;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/api/image/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/socialsdk/api/image/a;->c:Lcom/alipay/mobile/socialsdk/api/image/ImagesLoadCallBack;

    iput p4, p0, Lcom/alipay/mobile/socialsdk/api/image/a;->d:I

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final display(Landroid/view/View;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 60
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/image/ImagesDownloader;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onSuccess: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/api/image/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/image/a;->c:Lcom/alipay/mobile/socialsdk/api/image/ImagesLoadCallBack;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/image/a;->b:Ljava/lang/String;

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    iget v2, p0, Lcom/alipay/mobile/socialsdk/api/image/a;->d:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, p2, v2, v3}, Lcom/alipay/mobile/socialsdk/api/image/ImagesLoadCallBack;->onLoad(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;IZ)V

    .line 62
    return-void
.end method
