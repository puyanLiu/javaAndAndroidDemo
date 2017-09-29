.class final Lcom/alipay/pushsdk/push/connection/e;
.super Ljava/lang/Thread;
.source "PacketReader.java"


# instance fields
.field final synthetic a:Lcom/alipay/pushsdk/push/connection/d;


# direct methods
.method constructor <init>(Lcom/alipay/pushsdk/push/connection/d;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/pushsdk/push/connection/e;->a:Lcom/alipay/pushsdk/push/connection/d;

    .line 54
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/e;->a:Lcom/alipay/pushsdk/push/connection/d;

    invoke-static {v0, p0}, Lcom/alipay/pushsdk/push/connection/d;->a(Lcom/alipay/pushsdk/push/connection/d;Ljava/lang/Thread;)V

    .line 57
    return-void
.end method
