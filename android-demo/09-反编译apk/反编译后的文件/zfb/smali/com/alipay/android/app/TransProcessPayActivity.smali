.class public Lcom/alipay/android/app/TransProcessPayActivity;
.super Landroid/app/Activity;
.source "TransProcessPayActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-virtual {p0}, Lcom/alipay/android/app/TransProcessPayActivity;->finish()V

    .line 22
    return-void
.end method
