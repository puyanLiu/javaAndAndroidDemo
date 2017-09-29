.class Lmtopsdk/mtop/config/SwitchConfigReceiver$1;
.super Ljava/lang/Object;
.source "SwitchConfigReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lmtopsdk/mtop/config/SwitchConfigReceiver;


# direct methods
.method constructor <init>(Lmtopsdk/mtop/config/SwitchConfigReceiver;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lmtopsdk/mtop/config/SwitchConfigReceiver$1;->this$0:Lmtopsdk/mtop/config/SwitchConfigReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lmtopsdk/mtop/config/SwitchConfigManager;->getInstance()Lmtopsdk/mtop/config/SwitchConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lmtopsdk/mtop/config/SwitchConfigManager;->updataSecurityAppKeyApiList()V

    .line 44
    return-void
.end method
