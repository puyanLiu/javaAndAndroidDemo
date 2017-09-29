.class public Lcom/spdu/httpdns/DnsEvent;
.super Ljava/util/EventObject;
.source "DnsEvent.java"


# instance fields
.field private a:Lcom/spdu/httpdns/MessageType;

.field private b:J

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/spdu/httpdns/MessageType;)V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 20
    iput-object p2, p0, Lcom/spdu/httpdns/DnsEvent;->a:Lcom/spdu/httpdns/MessageType;

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/spdu/httpdns/DnsEvent;->b:J

    .line 22
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/spdu/httpdns/DnsEvent;->c:Ljava/lang/String;

    .line 37
    return-void
.end method
