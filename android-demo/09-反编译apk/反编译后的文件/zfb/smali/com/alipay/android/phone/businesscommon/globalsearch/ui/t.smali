.class final Lcom/alipay/android/phone/businesscommon/globalsearch/ui/t;
.super Ljava/lang/Object;
.source "MoreChatMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/s;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/s;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/t;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/s;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/t;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/s;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/s;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/s;)Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;)Lcom/alipay/android/phone/a/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/t;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/s;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/s;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/s;)Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->e(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;)V

    .line 84
    :cond_0
    return-void
.end method
