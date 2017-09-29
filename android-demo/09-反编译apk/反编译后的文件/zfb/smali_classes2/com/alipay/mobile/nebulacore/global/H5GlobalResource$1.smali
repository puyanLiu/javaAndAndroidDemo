.class Lcom/alipay/mobile/nebulacore/global/H5GlobalResource$1;
.super Ljava/lang/Object;
.source "H5GlobalResource.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/global/H5GlobalResource$1;->a:Landroid/os/Bundle;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/global/H5GlobalResource$1;->a:Landroid/os/Bundle;

    invoke-static {}, Lcom/alipay/mobile/nebulacore/global/H5GlobalResource;->a()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5PackageParser;->parsePackage(Landroid/os/Bundle;Ljava/util/Map;)I

    .line 32
    return-void
.end method
