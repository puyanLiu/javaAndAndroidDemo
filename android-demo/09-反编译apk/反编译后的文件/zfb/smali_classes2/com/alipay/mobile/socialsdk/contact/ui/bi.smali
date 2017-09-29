.class final Lcom/alipay/mobile/socialsdk/contact/ui/bi;
.super Ljava/lang/Object;
.source "SelectChatRoomActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity_;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/bi;->a:Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/bi;->a:Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity_;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity_;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/bi;->a:Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity_;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity_;->a(Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity_;)V

    .line 81
    :cond_0
    return-void
.end method
