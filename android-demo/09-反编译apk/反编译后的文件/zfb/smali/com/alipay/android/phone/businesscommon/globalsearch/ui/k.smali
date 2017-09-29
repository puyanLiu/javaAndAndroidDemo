.class final Lcom/alipay/android/phone/businesscommon/globalsearch/ui/k;
.super Ljava/lang/Object;
.source "MainSearchFragment.java"

# interfaces
.implements Lcom/alipay/android/phone/a/b/a;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/k;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 124
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->e()I

    move-result v0

    return v0
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 114
    if-eqz p1, :cond_1

    .line 115
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/k;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;I)V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/k;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/k;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;I)V

    .line 118
    const-string/jumbo v0, "search"

    const-string/jumbo v1, "\u5c55\u793a\u83ca\u82b1\uff0c\u52a0\u8f7d\u4e2d..."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
