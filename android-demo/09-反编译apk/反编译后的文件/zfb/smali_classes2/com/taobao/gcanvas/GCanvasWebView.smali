.class public abstract Lcom/taobao/gcanvas/GCanvasWebView;
.super Ljava/lang/Object;
.source "GCanvasWebView.java"


# instance fields
.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/taobao/gcanvas/GCanvasWebView;->mView:Landroid/view/View;

    .line 18
    return-void
.end method


# virtual methods
.method public abstract getOriginalUrl()Ljava/lang/String;
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract getUserAgentString()Ljava/lang/String;
.end method

.method public getWebView()Landroid/view/View;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/taobao/gcanvas/GCanvasWebView;->mView:Landroid/view/View;

    return-object v0
.end method

.method public abstract setUserAgentString(Ljava/lang/String;)V
.end method
