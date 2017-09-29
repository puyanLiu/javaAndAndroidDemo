.class final Lcom/spdu/httpdns/j;
.super Ljava/lang/Object;
.source "NetworkManager.java"


# static fields
.field static a:Lcom/spdu/httpdns/NetworkManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lcom/spdu/httpdns/NetworkManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/spdu/httpdns/NetworkManager;-><init>(B)V

    sput-object v0, Lcom/spdu/httpdns/j;->a:Lcom/spdu/httpdns/NetworkManager;

    return-void
.end method
