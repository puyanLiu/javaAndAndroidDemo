.class final Lcom/alipay/mobile/socialsdk/chat/ui/v;
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
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/ui/v;->a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/chat/ui/v;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 426
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/v;->a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->b(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;)Lcom/alipay/mobile/framework/service/ext/contact/ShareResultCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/v;->a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->b(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;)Lcom/alipay/mobile/framework/service/ext/contact/ShareResultCallback;

    move-result-object v0

    .line 428
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/ui/v;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    iget v1, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemType:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/ui/v;->b:Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    iget-object v2, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/contact/ShareResultCallback;->onShareSucceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/v;->a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->dismissProgressDialog()V

    .line 430
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/v;->a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;

    const-string/jumbo v1, "\u5206\u4eab\u6210\u529f"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->toast(Ljava/lang/String;I)V

    .line 431
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/v;->a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->finish()V

    .line 432
    return-void
.end method
