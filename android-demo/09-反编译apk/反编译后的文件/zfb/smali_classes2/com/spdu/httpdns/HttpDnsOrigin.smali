.class public Lcom/spdu/httpdns/HttpDnsOrigin;
.super Ljava/lang/Object;
.source "HttpDnsOrigin.java"


# static fields
.field private static g:I


# instance fields
.field a:I

.field private b:Ljava/lang/String;

.field private c:I

.field private d:J

.field private e:Z

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput v0, Lcom/spdu/httpdns/HttpDnsOrigin;->g:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean v2, p0, Lcom/spdu/httpdns/HttpDnsOrigin;->e:Z

    .line 18
    iput v2, p0, Lcom/spdu/httpdns/HttpDnsOrigin;->a:I

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spdu/httpdns/HttpDnsOrigin;->b:Ljava/lang/String;

    .line 24
    iput v2, p0, Lcom/spdu/httpdns/HttpDnsOrigin;->c:I

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/spdu/httpdns/HttpDnsOrigin;->d:J

    .line 26
    iput v2, p0, Lcom/spdu/httpdns/HttpDnsOrigin;->f:I

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean v0, p0, Lcom/spdu/httpdns/HttpDnsOrigin;->e:Z

    .line 18
    iput v0, p0, Lcom/spdu/httpdns/HttpDnsOrigin;->a:I

    .line 31
    iput-object p1, p0, Lcom/spdu/httpdns/HttpDnsOrigin;->b:Ljava/lang/String;

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Lcom/spdu/httpdns/HttpDnsOrigin;->c:I

    .line 33
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/spdu/httpdns/HttpDnsOrigin;->d:J

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIJZI)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean v1, p0, Lcom/spdu/httpdns/HttpDnsOrigin;->e:Z

    .line 18
    iput v1, p0, Lcom/spdu/httpdns/HttpDnsOrigin;->a:I

    .line 38
    iput-object p1, p0, Lcom/spdu/httpdns/HttpDnsOrigin;->b:Ljava/lang/String;

    .line 39
    iput p2, p0, Lcom/spdu/httpdns/HttpDnsOrigin;->c:I

    .line 40
    iput-wide p4, p0, Lcom/spdu/httpdns/HttpDnsOrigin;->d:J

    .line 41
    iput p3, p0, Lcom/spdu/httpdns/HttpDnsOrigin;->f:I

    .line 42
    iput-boolean p6, p0, Lcom/spdu/httpdns/HttpDnsOrigin;->e:Z

    .line 43
    iput p7, p0, Lcom/spdu/httpdns/HttpDnsOrigin;->a:I

    .line 44
    iget-boolean v0, p0, Lcom/spdu/httpdns/HttpDnsOrigin;->e:Z

    if-nez v0, :cond_0

    .line 45
    iput v1, p0, Lcom/spdu/httpdns/HttpDnsOrigin;->a:I

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/spdu/httpdns/HttpDnsOrigin;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/spdu/httpdns/HttpDnsOrigin;->c:I

    return v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/spdu/httpdns/HttpDnsOrigin;->d:J

    return-wide v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/spdu/httpdns/HttpDnsOrigin;->f:I

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/spdu/httpdns/HttpDnsOrigin;->e:Z

    return v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/spdu/httpdns/HttpDnsOrigin;->e:Z

    if-eqz v0, :cond_0

    .line 106
    iget v0, p0, Lcom/spdu/httpdns/HttpDnsOrigin;->a:I

    .line 108
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/spdu/httpdns/HttpDnsOrigin;->g:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/spdu/httpdns/HttpDnsOrigin;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " port "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spdu/httpdns/HttpDnsOrigin;->c:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",sport:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spdu/httpdns/HttpDnsOrigin;->f:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",ttl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/spdu/httpdns/HttpDnsOrigin;->d:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",spdy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spdu/httpdns/HttpDnsOrigin;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",extend port : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spdu/httpdns/HttpDnsOrigin;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    return-object v0
.end method
