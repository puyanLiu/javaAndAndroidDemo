.class final Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;
.super Ljava/lang/Object;
.source "MoreChatMessageActivity.java"

# interfaces
.implements Lcom/alipay/android/phone/a/a/h;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->a(Z)V

    .line 110
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->a(Z)V

    .line 102
    const-string/jumbo v0, "jiushi"

    const-string/jumbo v1, "MoreDataFragment notifyRefrash"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->f(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;)Lcom/alipay/android/phone/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/a/a/b;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 104
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->f(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->a(Ljava/util/List;)V

    .line 105
    return-void
.end method
