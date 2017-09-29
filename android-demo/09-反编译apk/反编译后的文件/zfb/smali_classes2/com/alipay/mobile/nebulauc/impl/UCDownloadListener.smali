.class Lcom/alipay/mobile/nebulauc/impl/UCDownloadListener;
.super Ljava/lang/Object;
.source "UCDownloadListener.java"

# interfaces
.implements Lcom/uc/webview/export/DownloadListener;


# instance fields
.field private mListener:Lcom/alipay/mobile/nebula/webview/APDownloadListener;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/webview/APDownloadListener;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/UCDownloadListener;->mListener:Lcom/alipay/mobile/nebula/webview/APDownloadListener;

    .line 12
    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCDownloadListener;->mListener:Lcom/alipay/mobile/nebula/webview/APDownloadListener;

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCDownloadListener;->mListener:Lcom/alipay/mobile/nebula/webview/APDownloadListener;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/nebula/webview/APDownloadListener;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 20
    :cond_0
    return-void
.end method
