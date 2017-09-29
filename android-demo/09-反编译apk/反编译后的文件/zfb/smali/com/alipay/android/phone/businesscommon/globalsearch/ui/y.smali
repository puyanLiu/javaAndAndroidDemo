.class final Lcom/alipay/android/phone/businesscommon/globalsearch/ui/y;
.super Ljava/lang/Object;
.source "MorePageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/x;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/x;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/y;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/x;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/y;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/x;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/x;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/x;)Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->b(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;)Lcom/alipay/android/phone/a/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    const-string/jumbo v0, "jiushi"

    const-string/jumbo v1, "start request more !"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/y;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/x;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/x;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/x;)Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/y;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/x;

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/x;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/x;)Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->g(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity;Ljava/lang/String;)V

    .line 131
    :cond_0
    return-void
.end method
