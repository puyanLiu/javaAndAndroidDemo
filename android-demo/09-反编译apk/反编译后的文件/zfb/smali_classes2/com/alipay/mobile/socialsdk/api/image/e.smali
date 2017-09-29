.class final Lcom/alipay/mobile/socialsdk/api/image/e;
.super Ljava/lang/Object;
.source "ImagesDownloader.java"


# static fields
.field private static final a:Lcom/alipay/mobile/socialsdk/api/image/ImagesDownloader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 148
    new-instance v0, Lcom/alipay/mobile/socialsdk/api/image/ImagesDownloader;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/socialsdk/api/image/ImagesDownloader;-><init>(B)V

    sput-object v0, Lcom/alipay/mobile/socialsdk/api/image/e;->a:Lcom/alipay/mobile/socialsdk/api/image/ImagesDownloader;

    .line 147
    return-void
.end method

.method static synthetic a()Lcom/alipay/mobile/socialsdk/api/image/ImagesDownloader;
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lcom/alipay/mobile/socialsdk/api/image/e;->a:Lcom/alipay/mobile/socialsdk/api/image/ImagesDownloader;

    return-object v0
.end method
