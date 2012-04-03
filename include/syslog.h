#ifndef __SYSLOG_H_
#define __SYSLOG_H_

#define LOG_DAEMON (3<<3)

#define LOG_EMERG   0
#define LOG_ALERT   1
#define LOG_CRIT    2
#define LOG_ERR     3
#define LOG_WARNING 4
#define LOG_NOTICE  5
#define LOG_INFO    6
#define LOG_DEBUG   7

inline void syslog(int priority, const char *message, ...) {}
//#if defined(__STDC__)
//extern void openlog(const char *, int);
//extern void syslog(int, const char *, ...);
//extern void closelog(void);
//extern void setlogmask(int);
//#endif
#endif
