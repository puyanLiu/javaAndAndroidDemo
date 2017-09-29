.class final Lcom/spdu/httpdns/a;
.super Ljava/lang/Object;
.source "HttpDns.java"


# static fields
.field static a:Lcom/spdu/httpdns/HttpDns;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcom/spdu/httpdns/HttpDns;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/spdu/httpdns/HttpDns;-><init>(B)V

    sput-object v0, Lcom/spdu/httpdns/a;->a:Lcom/spdu/httpdns/HttpDns;

    return-void
.end method
