.class public interface abstract Ljavax/mail/internet/MimePart;
.super Ljava/lang/Object;
.source "MimePart.java"

# interfaces
.implements Ljavax/mail/Part;


# virtual methods
.method public abstract getEncoding()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method
