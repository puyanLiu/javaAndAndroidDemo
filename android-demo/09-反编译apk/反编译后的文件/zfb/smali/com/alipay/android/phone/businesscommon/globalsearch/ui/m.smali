.class final Lcom/alipay/android/phone/businesscommon/globalsearch/ui/m;
.super Ljava/lang/Object;
.source "MainSearchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/m;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/m;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->b(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/m;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->b(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/l;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
