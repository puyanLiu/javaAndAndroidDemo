.class public Lcom/alipay/android/phone/messageboxstatic/MsgboxStaticApp;
.super Lcom/alipay/mobile/framework/app/ActivityApplication;
.source "MsgboxStaticApp.java"


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public getEntryClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/alipay/android/phone/messageboxstatic/MsgboxStaticApp;->a:Landroid/os/Bundle;

    .line 195
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 210
    return-void
.end method

.method protected onRestart(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/alipay/android/phone/messageboxstatic/MsgboxStaticApp;->a:Landroid/os/Bundle;

    .line 201
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 214
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 206
    return-void
.end method
