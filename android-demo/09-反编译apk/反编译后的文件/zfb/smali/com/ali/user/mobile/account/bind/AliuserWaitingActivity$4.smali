.class Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity$4;
.super Ljava/lang/Object;
.source "AliuserWaitingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity$4;->this$0:Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity$4;->this$0:Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;

    iget-object v1, p0, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity$4;->this$0:Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;

    invoke-static {v1}, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->access$8(Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->access$5(Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;I)V

    .line 109
    return-void
.end method
