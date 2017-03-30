#ifndef _MACROS_H_
#define _MACROS_H_


#define CONCAT(x,y) x ##_## y
#define CONCAT_MACROS(x,y) CONCAT(x,y)
#define QUOTE(str) #str
#define QUOTE_MACROS(str) QUOTE(str)


#ifndef METHOD_TEMPLATE_H
#define METHOD_TEMPLATE_H QUOTE_MACROS(CONCAT_MACROS(METHOD,lowlevel_template.h))
#endif


#endif /* END OF _MACROS_H_ */
