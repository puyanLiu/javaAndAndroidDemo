.class public Lcom/alipay/mobile/h5container/api/H5Context;
.super Ljava/lang/Object;
.source "H5Context.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5Context;->context:Landroid/content/Context;

    .line 12
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5Context;->context:Landroid/content/Context;

    return-object v0
.end method
