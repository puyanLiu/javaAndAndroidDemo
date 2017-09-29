.class final Lcom/alipay/mobile/socialsdk/chat/ui/l;
.super Ljava/lang/Object;
.source "ShareEntryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;

.field private final synthetic b:Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/ui/l;->a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/chat/ui/l;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    .line 605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 608
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/l;->a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->b(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;)Lcom/alipay/mobile/framework/service/ext/contact/ShareResultCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/l;->a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->b(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;)Lcom/alipay/mobile/framework/service/ext/contact/ShareResultCallback;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/ui/l;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    iget v2, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemType:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/ui/l;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    iget-object v2, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/contact/ShareResultCallback;->onShareSucceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/l;->a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->dismissProgressDialog()V

    .line 612
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/l;->a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->finish()V

    .line 613
    return-void
.end method
