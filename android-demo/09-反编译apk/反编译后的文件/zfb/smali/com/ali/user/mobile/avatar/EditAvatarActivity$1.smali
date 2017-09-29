.class Lcom/ali/user/mobile/avatar/EditAvatarActivity$1;
.super Landroid/os/Handler;
.source "EditAvatarActivity.java"


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/avatar/EditAvatarActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/avatar/EditAvatarActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity$1;->this$0:Lcom/ali/user/mobile/avatar/EditAvatarActivity;

    .line 98
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 101
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v3, v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity$1;->this$0:Lcom/ali/user/mobile/avatar/EditAvatarActivity;

    invoke-static {v0}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->access$4(Lcom/ali/user/mobile/avatar/EditAvatarActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity$1;->this$0:Lcom/ali/user/mobile/avatar/EditAvatarActivity;

    invoke-static {v0}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->access$5(Lcom/ali/user/mobile/avatar/EditAvatarActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity$1;->this$0:Lcom/ali/user/mobile/avatar/EditAvatarActivity;

    invoke-static {v0}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->access$6(Lcom/ali/user/mobile/avatar/EditAvatarActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity$1;->this$0:Lcom/ali/user/mobile/avatar/EditAvatarActivity;

    iget-object v1, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity$1;->this$0:Lcom/ali/user/mobile/avatar/EditAvatarActivity;

    invoke-virtual {v1}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->check_camera_permission:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->toast(Ljava/lang/String;I)V

    .line 106
    :cond_0
    return-void
.end method
