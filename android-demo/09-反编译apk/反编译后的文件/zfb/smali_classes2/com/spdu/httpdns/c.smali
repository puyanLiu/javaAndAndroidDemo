.class final Lcom/spdu/httpdns/c;
.super Ljava/lang/Object;
.source "HttpDnsArgs.java"


# static fields
.field static a:Lcom/spdu/httpdns/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 81
    new-instance v0, Lcom/spdu/httpdns/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/spdu/httpdns/b;-><init>(B)V

    sput-object v0, Lcom/spdu/httpdns/c;->a:Lcom/spdu/httpdns/b;

    return-void
.end method
