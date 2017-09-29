.class final Lcom/alipay/mobile/socialsdk/api/image/c;
.super Ljava/lang/Object;
.source "ImagesDownloader.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APDisplayer;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/api/image/ImagesDownloader;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:I

.field private final synthetic d:I

.field private final synthetic e:Lcom/alipay/mobile/socialsdk/api/image/ImagesLoadCallBack;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/api/image/ImagesDownloader;Ljava/lang/String;IILcom/alipay/mobile/socialsdk/api/image/ImagesLoadCallBack;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/api/image/c;->a:Lcom/alipay/mobile/socialsdk/api/image/ImagesDownloader;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/api/image/c;->b:Ljava/lang/String;

    iput p3, p0, Lcom/alipay/mobile/socialsdk/api/image/c;->c:I

    iput p4, p0, Lcom/alipay/mobile/socialsdk/api/image/c;->d:I

    iput-object p5, p0, Lcom/alipay/mobile/socialsdk/api/image/c;->e:Lcom/alipay/mobile/socialsdk/api/image/ImagesLoadCallBack;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final display(Landroid/view/View;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 101
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/image/ImagesDownloader;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onSuccess: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/api/image/c;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/image/c;->a:Lcom/alipay/mobile/socialsdk/api/image/ImagesDownloader;

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    iget v1, p0, Lcom/alipay/mobile/socialsdk/api/image/c;->c:I

    iget v2, p0, Lcom/alipay/mobile/socialsdk/api/image/c;->d:I

    invoke-virtual {v0, p2, v1, v2}, Lcom/alipay/mobile/socialsdk/api/image/ImagesDownloader;->drawable2BimapFor(Landroid/graphics/drawable/BitmapDrawable;II)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_0

    .line 104
    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/image/c;->e:Lcom/alipay/mobile/socialsdk/api/image/ImagesLoadCallBack;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/image/c;->b:Ljava/lang/String;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/alipay/mobile/socialsdk/api/image/ImagesLoadCallBack;->onLoad(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;IZ)V

    .line 107
    return-void
.end method
