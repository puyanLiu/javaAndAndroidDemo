.class Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAdapter$1;
.super Ljava/lang/Object;
.source "BraceletAdapter.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field final synthetic this$0:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAdapter;


# direct methods
.method constructor <init>(Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAdapter;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAdapter$1;->this$0:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Ljava/lang/Thread;

    const-string/jumbo v1, "BraceletThread"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method
