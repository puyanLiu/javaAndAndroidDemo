.class final Lnet/lingala/zip4j/unzip/b;
.super Ljava/lang/Thread;
.source "Unzip.java"


# instance fields
.field final synthetic a:Lnet/lingala/zip4j/model/f;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lnet/lingala/zip4j/model/h;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lnet/lingala/zip4j/progress/a;

.field final synthetic f:Lnet/lingala/zip4j/unzip/a;


# direct methods
.method constructor <init>(Lnet/lingala/zip4j/unzip/a;Ljava/lang/String;Lnet/lingala/zip4j/model/f;Ljava/lang/String;Ljava/lang/String;Lnet/lingala/zip4j/progress/a;)V
    .locals 1

    .prologue
    .line 106
    iput-object p1, p0, Lnet/lingala/zip4j/unzip/b;->f:Lnet/lingala/zip4j/unzip/a;

    iput-object p3, p0, Lnet/lingala/zip4j/unzip/b;->a:Lnet/lingala/zip4j/model/f;

    iput-object p4, p0, Lnet/lingala/zip4j/unzip/b;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/lingala/zip4j/unzip/b;->c:Lnet/lingala/zip4j/model/h;

    iput-object p5, p0, Lnet/lingala/zip4j/unzip/b;->d:Ljava/lang/String;

    iput-object p6, p0, Lnet/lingala/zip4j/unzip/b;->e:Lnet/lingala/zip4j/progress/a;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 109
    :try_start_0
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/b;->f:Lnet/lingala/zip4j/unzip/a;

    iget-object v1, p0, Lnet/lingala/zip4j/unzip/b;->a:Lnet/lingala/zip4j/model/f;

    iget-object v2, p0, Lnet/lingala/zip4j/unzip/b;->b:Ljava/lang/String;

    iget-object v3, p0, Lnet/lingala/zip4j/unzip/b;->c:Lnet/lingala/zip4j/model/h;

    iget-object v4, p0, Lnet/lingala/zip4j/unzip/b;->d:Ljava/lang/String;

    iget-object v5, p0, Lnet/lingala/zip4j/unzip/b;->e:Lnet/lingala/zip4j/progress/a;

    invoke-static/range {v0 .. v5}, Lnet/lingala/zip4j/unzip/a;->a(Lnet/lingala/zip4j/unzip/a;Lnet/lingala/zip4j/model/f;Ljava/lang/String;Lnet/lingala/zip4j/model/h;Ljava/lang/String;Lnet/lingala/zip4j/progress/a;)V

    .line 110
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/b;->e:Lnet/lingala/zip4j/progress/a;

    invoke-virtual {v0}, Lnet/lingala/zip4j/progress/a;->e()V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
