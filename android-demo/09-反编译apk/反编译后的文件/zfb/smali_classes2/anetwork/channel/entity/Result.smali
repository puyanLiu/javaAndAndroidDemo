.class public Lanetwork/channel/entity/Result;
.super Ljava/lang/Object;
.source "Result.java"


# instance fields
.field a:I

.field b:[B

.field c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field d:Z

.field e:Z

.field f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lanetwork/channel/entity/Result;->e:Z

    .line 16
    return-void
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 24
    iput p1, p0, Lanetwork/channel/entity/Result;->a:I

    .line 25
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    iput-object p1, p0, Lanetwork/channel/entity/Result;->c:Ljava/util/Map;

    .line 37
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lanetwork/channel/entity/Result;->d:Z

    .line 41
    return-void
.end method

.method public final a([B)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lanetwork/channel/entity/Result;->b:[B

    .line 31
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lanetwork/channel/entity/Result;->f:Z

    .line 47
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lanetwork/channel/entity/Result;->e:Z

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lanetwork/channel/entity/Result;->a:I

    return v0
.end method

.method public final d()[B
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lanetwork/channel/entity/Result;->b:[B

    return-object v0
.end method

.method public final e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lanetwork/channel/entity/Result;->c:Ljava/util/Map;

    return-object v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lanetwork/channel/entity/Result;->d:Z

    return v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lanetwork/channel/entity/Result;->f:Z

    return v0
.end method
