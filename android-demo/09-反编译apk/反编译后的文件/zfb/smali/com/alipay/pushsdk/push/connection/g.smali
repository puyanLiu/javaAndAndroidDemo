.class final Lcom/alipay/pushsdk/push/connection/g;
.super Ljava/lang/Thread;
.source "PacketWriter.java"


# instance fields
.field final synthetic a:Lcom/alipay/pushsdk/push/connection/f;


# direct methods
.method constructor <init>(Lcom/alipay/pushsdk/push/connection/f;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/pushsdk/push/connection/g;->a:Lcom/alipay/pushsdk/push/connection/f;

    .line 61
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/g;->a:Lcom/alipay/pushsdk/push/connection/f;

    invoke-static {v0, p0}, Lcom/alipay/pushsdk/push/connection/f;->a(Lcom/alipay/pushsdk/push/connection/f;Ljava/lang/Thread;)V

    .line 64
    return-void
.end method
