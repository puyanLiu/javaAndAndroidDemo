.class Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity$2;
.super Ljava/lang/Object;
.source "AliuserWaitingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity$2;->this$0:Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity$2;->this$0:Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->access$5(Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;I)V

    .line 70
    return-void
.end method
