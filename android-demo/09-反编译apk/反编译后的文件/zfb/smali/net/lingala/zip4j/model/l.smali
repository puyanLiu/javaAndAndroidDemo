.class public final Lnet/lingala/zip4j/model/l;
.super Ljava/lang/Object;
.source "ZipModel.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:Lnet/lingala/zip4j/model/b;

.field private b:Lnet/lingala/zip4j/model/d;

.field private c:Lnet/lingala/zip4j/model/i;

.field private d:Lnet/lingala/zip4j/model/j;

.field private e:Z

.field private f:J

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/lingala/zip4j/model/l;->f:J

    .line 55
    return-void
.end method


# virtual methods
.method public final a()Lnet/lingala/zip4j/model/b;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lnet/lingala/zip4j/model/l;->a:Lnet/lingala/zip4j/model/b;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lnet/lingala/zip4j/model/l;->g:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public final a(Lnet/lingala/zip4j/model/b;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lnet/lingala/zip4j/model/l;->a:Lnet/lingala/zip4j/model/b;

    .line 79
    return-void
.end method

.method public final a(Lnet/lingala/zip4j/model/d;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lnet/lingala/zip4j/model/l;->b:Lnet/lingala/zip4j/model/d;

    .line 87
    return-void
.end method

.method public final a(Lnet/lingala/zip4j/model/i;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lnet/lingala/zip4j/model/l;->c:Lnet/lingala/zip4j/model/i;

    .line 121
    return-void
.end method

.method public final a(Lnet/lingala/zip4j/model/j;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lnet/lingala/zip4j/model/l;->d:Lnet/lingala/zip4j/model/j;

    .line 130
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 103
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/l;->e:Z

    .line 104
    return-void
.end method

.method public final b()Lnet/lingala/zip4j/model/d;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lnet/lingala/zip4j/model/l;->b:Lnet/lingala/zip4j/model/d;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lnet/lingala/zip4j/model/l;->i:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 137
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/l;->h:Z

    .line 138
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/l;->e:Z

    return v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 173
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lnet/lingala/zip4j/model/l;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Lnet/lingala/zip4j/model/i;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lnet/lingala/zip4j/model/l;->c:Lnet/lingala/zip4j/model/i;

    return-object v0
.end method

.method public final f()Lnet/lingala/zip4j/model/j;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lnet/lingala/zip4j/model/l;->d:Lnet/lingala/zip4j/model/j;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/l;->h:Z

    return v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lnet/lingala/zip4j/model/l;->i:Ljava/lang/String;

    return-object v0
.end method
