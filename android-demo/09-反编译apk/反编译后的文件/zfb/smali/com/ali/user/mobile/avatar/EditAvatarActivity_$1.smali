.class Lcom/ali/user/mobile/avatar/EditAvatarActivity_$1;
.super Ljava/lang/Object;
.source "EditAvatarActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/avatar/EditAvatarActivity_;

.field final synthetic val$rid:I


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/avatar/EditAvatarActivity_;I)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity_$1;->this$0:Lcom/ali/user/mobile/avatar/EditAvatarActivity_;

    iput p2, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity_$1;->val$rid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity_$1;->this$0:Lcom/ali/user/mobile/avatar/EditAvatarActivity_;

    invoke-virtual {v0}, Lcom/ali/user/mobile/avatar/EditAvatarActivity_;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity_$1;->this$0:Lcom/ali/user/mobile/avatar/EditAvatarActivity_;

    iget v1, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity_$1;->val$rid:I

    invoke-static {v0, v1}, Lcom/ali/user/mobile/avatar/EditAvatarActivity_;->access$001(Lcom/ali/user/mobile/avatar/EditAvatarActivity_;I)V

    .line 84
    :cond_0
    return-void
.end method
